class ExpensesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_condo#, except: :condo_budget
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all
  end

  def condo_budget
    @expenses = Expense.of_this_year.where(condo: @condo)
    @invoices = Invoice.where('extract(year  from date_invoice) = ?', Time.zone.now.year).where(expense: @expenses)
  end

  def condo_estim_budget
    @expenses = Expense.of_next_year.where(condo: @condo)
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = @condo.expenses.build
    @expense.exercice = Time.zone.now.year
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = @condo.expenses.build(expense_params)
    @expense.user_id = current_user.id

    respond_to do |format|
      if @expense.save
        format.html { redirect_to condo_budget_path(@expense.condo), notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to condo_budget_path(@expense.condo), notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to @expense.condo, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def set_condo
      @condo = Condo.find(params[:condo_id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:nature, :company, :description, :estimated, :real, :exercice, :condo_id, :user_id)
    end
end
