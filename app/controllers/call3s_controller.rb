class Call3sController < ApplicationController
  before_filter :authenticate_user!
  # GET /call3s
  # GET /call3s.json
  def index
    @call3s = Call3.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call3s }
    end
  end

  # GET /call3s/1
  # GET /call3s/1.json
  def show
    @call3 = Call3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call3 }
    end
  end

  # GET /call3s/new
  # GET /call3s/new.json
  def new
    @call3 = Call3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call3 }
    end
  end

  # GET /call3s/1/edit
  def edit
    @call3 = Call3.find(params[:id])
  end

  # POST /call3s
  # POST /call3s.json
  def create
    @call3 = Call3.new(params[:call3])

    respond_to do |format|
      if @call3.save
        format.html { redirect_to @call3, notice: 'Call3 was successfully created.' }
        format.json { render json: @call3, status: :created, location: @call3 }
      else
        format.html { render action: "new" }
        format.json { render json: @call3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call3s/1
  # PUT /call3s/1.json
  def update
    @call3 = Call3.find(params[:id])

    respond_to do |format|
      if @call3.update_attributes(params[:call3])
        format.html { redirect_to @call3, notice: 'Call3 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call3s/1
  # DELETE /call3s/1.json
  def destroy
    @call3 = Call3.find(params[:id])
    @call3.destroy

    respond_to do |format|
      format.html { redirect_to call3s_url }
      format.json { head :ok }
    end
  end
end
