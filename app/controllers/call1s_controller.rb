class Call1sController < ApplicationController
  before_filter :authenticate_user!
  # GET /call1s
  # GET /call1s.json
  def index
    @call1s = Call1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call1s }
    end
  end

  # GET /call1s/1
  # GET /call1s/1.json
  def show
    @call1 = Call1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call1 }
    end
  end

  # GET /call1s/new
  # GET /call1s/new.json
  def new
    @call1 = Call1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call1 }
    end
  end

  # GET /call1s/1/edit
  def edit
    @call1 = Call1.find(params[:id])
  end

  # POST /call1s
  # POST /call1s.json
  def create

    @call1 = Call1.new(params[:call1])

    respond_to do |format|
      if @call1.save
        format.html { redirect_to @call1, notice: 'Call1 was successfully created.' }
        format.json { render json: @call1, status: :created, location: @call1 }
      else
        format.html { render action: "new" }
        format.json { render json: @call1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call1s/1
  # PUT /call1s/1.json
  def update
    @call1 = Call1.find(params[:id])

    respond_to do |format|
      if @call1.update_attributes(params[:call1])
        format.html { redirect_to @call1, notice: 'Call1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call1s/1
  # DELETE /call1s/1.json
  def destroy
    @call1 = Call1.find(params[:id])
    @call1.destroy

    respond_to do |format|
      format.html { redirect_to call1s_url }
      format.json { head :ok }
    end
  end
end
