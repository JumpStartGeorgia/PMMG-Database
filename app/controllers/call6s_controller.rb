class Call6sController < ApplicationController
  before_filter :authenticate_user!
  # GET /call6s
  # GET /call6s.json
  def index
    @call6s = Call6.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call6s }
    end
  end

  # GET /call6s/1
  # GET /call6s/1.json
  def show
    @call6 = Call6.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call6 }
    end
  end

  # GET /call6s/new
  # GET /call6s/new.json
  def new
    @call6 = Call6.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call6 }
    end
  end

  # GET /call6s/1/edit
  def edit
    @call6 = Call6.find(params[:id])
  end

  # POST /call6s
  # POST /call6s.json
  def create
    @call6 = Call6.new(params[:call6])

    respond_to do |format|
      if @call6.save
        format.html { redirect_to @call6, notice: 'Call6 was successfully created.' }
        format.json { render json: @call6, status: :created, location: @call6 }
      else
        format.html { render action: "new" }
        format.json { render json: @call6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call6s/1
  # PUT /call6s/1.json
  def update
    @call6 = Call6.find(params[:id])

    respond_to do |format|
      if @call6.update_attributes(params[:call6])
        format.html { redirect_to @call6, notice: 'Call6 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call6s/1
  # DELETE /call6s/1.json
  def destroy
    @call6 = Call6.find(params[:id])
    @call6.destroy

    respond_to do |format|
      format.html { redirect_to call6s_url }
      format.json { head :ok }
    end
  end
end
