class FatiguesController < ApplicationController
  # GET /fatigues
  # GET /fatigues.json
  def index
    @fatigues = Fatigue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fatigues }
    end
  end

  # GET /fatigues/1
  # GET /fatigues/1.json
  def show
    @fatigue = Fatigue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fatigue }
    end
  end

  # GET /fatigues/new
  # GET /fatigues/new.json
  def new
    @fatigue = Fatigue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fatigue }
    end
  end

  # GET /fatigues/1/edit
  def edit
    @fatigue = Fatigue.find(params[:id])
  end

  # POST /fatigues
  # POST /fatigues.json
  def create
    @fatigue = Fatigue.new(params[:fatigue])

    respond_to do |format|
      if @fatigue.save
        format.html { redirect_to @fatigue, notice: 'Fatigue was successfully created.' }
        format.json { render json: @fatigue, status: :created, location: @fatigue }
      else
        format.html { render action: "new" }
        format.json { render json: @fatigue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fatigues/1
  # PUT /fatigues/1.json
  def update
    @fatigue = Fatigue.find(params[:id])

    respond_to do |format|
      if @fatigue.update_attributes(params[:fatigue])
        format.html { redirect_to @fatigue, notice: 'Fatigue was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fatigue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fatigues/1
  # DELETE /fatigues/1.json
  def destroy
    @fatigue = Fatigue.find(params[:id])
    @fatigue.destroy

    respond_to do |format|
      format.html { redirect_to fatigues_url }
      format.json { head :ok }
    end
  end
end
