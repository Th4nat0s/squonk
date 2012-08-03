class VillesController < ApplicationController
  # GET /villes
  # GET /villes.json
  def index
    @villes = Ville.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @villes }
    end
  end

  # GET /villes/1
  # GET /villes/1.json
  def show
    @ville = Ville.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ville }
    end
  end

  # GET /villes/new
  # GET /villes/new.json
  def new
    @ville = Ville.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ville }
    end
  end

  # GET /villes/1/edit
  def edit
    @ville = Ville.find(params[:id])
  end

  # POST /villes
  # POST /villes.json
  def create
    @ville = Ville.new(params[:ville])

    respond_to do |format|
      if @ville.save
        format.html { redirect_to @ville, notice: 'Ville was successfully created.' }
        format.json { render json: @ville, status: :created, location: @ville }
      else
        format.html { render action: "new" }
        format.json { render json: @ville.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /villes/1
  # PUT /villes/1.json
  def update
    @ville = Ville.find(params[:id])

    respond_to do |format|
      if @ville.update_attributes(params[:ville])
        format.html { redirect_to @ville, notice: 'Ville was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ville.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villes/1
  # DELETE /villes/1.json
  def destroy
    @ville = Ville.find(params[:id])
    @ville.destroy

    respond_to do |format|
      format.html { redirect_to villes_url }
      format.json { head :no_content }
    end
  end
end
