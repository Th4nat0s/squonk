class GensController < ApplicationController
  # GET /gens
  # GET /gens.json
  def index
    @gens = Gen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gens }
    end
  end

  # GET /gens/1
  # GET /gens/1.json
  def show
    @gen = Gen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gen }
    end
  end

  # GET /gens/new
  # GET /gens/new.json
  def new
    @gen = Gen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gen }
    end
  end

  # GET /gens/1/edit
  def edit
    @gen = Gen.find(params[:id])
  end

  # POST /gens
  # POST /gens.json
  def create
    @gen = Gen.new(params[:gen])

    respond_to do |format|
      if @gen.save
        format.html { redirect_to @gen, notice: 'Gen was successfully created.' }
        format.json { render json: @gen, status: :created, location: @gen }
      else
        format.html { render action: "new" }
        format.json { render json: @gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gens/1
  # PUT /gens/1.json
  def update
    @gen = Gen.find(params[:id])

    respond_to do |format|
      if @gen.update_attributes(params[:gen])
        format.html { redirect_to @gen, notice: 'Gen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gens/1
  # DELETE /gens/1.json
  def destroy
    @gen = Gen.find(params[:id])
    @gen.destroy

    respond_to do |format|
      format.html { redirect_to gens_url }
      format.json { head :no_content }
    end
  end
end
