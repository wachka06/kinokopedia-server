class MushroomsController < ApplicationController
  before_action :set_mushroom, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  
  # GET /mushrooms
  # GET /mushrooms.json
  def index
    @mushrooms = Mushroom.all
  end

  # GET /mushrooms/1
  # GET /mushrooms/1.json
  def show
  end

  # GET /mushrooms/new
  def new
    @mushroom = Mushroom.new
  end

  # GET /mushrooms/1/edit
  def edit
  end

  # POST /mushrooms
  # POST /mushrooms.json
  def create
    @mushroom = Mushroom.new(mushroom_params)
    binding.pry
    respond_to do |format|
      if @mushroom.save
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully created.' }
        format.json { render :show, status: :created, location: @mushroom }
      else
        format.html { render :new }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mushrooms/1
  # PATCH/PUT /mushrooms/1.json
  def update
    respond_to do |format|
      if @mushroom.update(mushroom_params)
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @mushroom }
      else
        format.html { render :edit }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mushrooms/1
  # DELETE /mushrooms/1.json
  def destroy
    @mushroom.destroy
    respond_to do |format|
      format.html { redirect_to mushrooms_url, notice: 'Mushroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom
      @mushroom = Mushroom.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def mushroom_params
      params.fetch(:mushroom, {}).permit(:latin_name, :common_name, :confused_with, :habitat, :region, :poisonous, :img_url)
    end
end
