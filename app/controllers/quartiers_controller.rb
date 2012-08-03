class QuartiersController < ApplicationController
  # GET /quartiers
  # GET /quartiers.json
  def index
    @quartiers = Quartier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quartiers }
    end
  end

  # GET /quartiers/1
  # GET /quartiers/1.json
  def show
    @quartier = Quartier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quartier }
    end
  end

  # GET /quartiers/new
  # GET /quartiers/new.json
  def new
    @quartier = Quartier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quartier }
    end
  end

  # GET /quartiers/1/edit
  def edit
    @quartier = Quartier.find(params[:id])
  end

  # POST /quartiers
  # POST /quartiers.json
  def create
    @quartier = Quartier.new(params[:quartier])

    respond_to do |format|
      if @quartier.save
        format.html { redirect_to @quartier, notice: 'Quartier was successfully created.' }
        format.json { render json: @quartier, status: :created, location: @quartier }
      else
        format.html { render action: "new" }
        format.json { render json: @quartier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quartiers/1
  # PUT /quartiers/1.json
  def update
    @quartier = Quartier.find(params[:id])

    respond_to do |format|
      if @quartier.update_attributes(params[:quartier])
        format.html { redirect_to @quartier, notice: 'Quartier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quartier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quartiers/1
  # DELETE /quartiers/1.json
  def destroy
    @quartier = Quartier.find(params[:id])
    @quartier.destroy

    respond_to do |format|
      format.html { redirect_to quartiers_url }
      format.json { head :no_content }
    end
  end
end
