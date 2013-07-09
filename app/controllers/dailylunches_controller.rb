class DailylunchesController < ApplicationController
  # GET /dailylunches
  # GET /dailylunches.json
  def index
    @dailylunches = Dailylunch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dailylunches }
    end
  end

  # GET /dailylunches/1
  # GET /dailylunches/1.json
  def show
    @dailylunch = Dailylunch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dailylunch }
    end
  end

  # GET /dailylunches/new
  # GET /dailylunches/new.json
  def new
    @dailylunch = Dailylunch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dailylunch }
    end
  end

  # GET /dailylunches/1/edit
  def edit
    @dailylunch = Dailylunch.find(params[:id])
  end

  # POST /dailylunches
  # POST /dailylunches.json
  def create
    @dailylunch = Dailylunch.new(params[:dailylunch])

    respond_to do |format|
      if @dailylunch.save
        format.html { redirect_to @dailylunch, notice: 'Dailylunch was successfully created.' }
        format.json { render json: @dailylunch, status: :created, location: @dailylunch }
      else
        format.html { render action: "new" }
        format.json { render json: @dailylunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dailylunches/1
  # PUT /dailylunches/1.json
  def update
    @dailylunch = Dailylunch.find(params[:id])

    respond_to do |format|
      if @dailylunch.update_attributes(params[:dailylunch])
        format.html { redirect_to @dailylunch, notice: 'Dailylunch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dailylunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailylunches/1
  # DELETE /dailylunches/1.json
  def destroy
    @dailylunch = Dailylunch.find(params[:id])
    @dailylunch.destroy

    respond_to do |format|
      format.html { redirect_to dailylunches_url }
      format.json { head :no_content }
    end
  end
end
