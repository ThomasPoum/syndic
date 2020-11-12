class CondosController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_condo, only: [:show, :edit, :update, :destroy]

  # GET /condos
  # GET /condos.json
  def index
    @condos = Condo.all
  end

  # GET /condos/1
  # GET /condos/1.json
  def show
    @expenses = Expense.of_this_year.where(condo: @condo)
    @invoices = Invoice.where(expense: @expenses)
  end

  # GET /condos/new
  def new
    @condo = current_user.condos.build
  end

  # GET /condos/1/edit
  def edit
  end

  # POST /condos
  # POST /condos.json
  def create
    @condo = current_user.condos.build(condo_params)
    @condo.user_id = current_user.id

    respond_to do |format|
      if @condo.save
        format.html { redirect_to @condo, notice: 'Condo was successfully created.' }
        format.json { render :show, status: :created, location: @condo }
      else
        format.html { render :new }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condos/1
  # PATCH/PUT /condos/1.json
  def update
    respond_to do |format|
      if @condo.update(condo_params)
        format.html { redirect_to @condo, notice: 'Condo was successfully updated.' }
        format.json { render :show, status: :ok, location: @condo }
      else
        format.html { render :edit }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condos/1
  # DELETE /condos/1.json
  def destroy
    @condo.destroy
    respond_to do |format|
      format.html { redirect_to condos_url, notice: 'Condo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condo
      @condo = Condo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def condo_params
      params.require(:condo).permit(:name, :user_id)
    end
end
