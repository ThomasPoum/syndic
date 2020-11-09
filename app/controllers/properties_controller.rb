class PropertiesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_condo
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @condo = @property.condo
    @user = @property.user_id
  end

  # GET /properties/new
  def new
    @property = @condo.properties.build
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = @condo.properties.build(property_params)
    @property.user_id = current_user.id

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property.condo, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property.condo, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to @property.condo, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = @condo.properties.find(params[:id])
    end

    def set_condo
      @condo = Condo.find(params[:condo_id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:address, :floor, :surface, :user_id, :condo_id)
    end
end
