class Call2sController < ApplicationController
  # GET /call2s
  # GET /call2s.json
  def index
    @call2s = Call2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call2s }
    end
  end

  # GET /call2s/1
  # GET /call2s/1.json
  def show
    @call2 = Call2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call2 }
    end
  end

  # GET /call2s/new
  # GET /call2s/new.json
  def new
    @call2 = Call2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call2 }
    end
  end

  # GET /call2s/1/edit
  def edit
    @call2 = Call2.find(params[:id])
  end

  # POST /call2s
  # POST /call2s.json
  def create
    @call2 = Call2.new(params[:call2])

    respond_to do |format|
      if @call2.save
        format.html { redirect_to @call2, notice: 'Call2 was successfully created.' }
        format.json { render json: @call2, status: :created, location: @call2 }
      else
        format.html { render action: "new" }
        format.json { render json: @call2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call2s/1
  # PUT /call2s/1.json
  def update
    @call2 = Call2.find(params[:id])

    respond_to do |format|
      if @call2.update_attributes(params[:call2])
        format.html { redirect_to @call2, notice: 'Call2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call2s/1
  # DELETE /call2s/1.json
  def destroy
    @call2 = Call2.find(params[:id])
    @call2.destroy

    respond_to do |format|
      format.html { redirect_to call2s_url }
      format.json { head :ok }
    end
  end
end
