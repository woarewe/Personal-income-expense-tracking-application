class CapitalsController < ApplicationController
  before_action :set_capital, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:create, :update]

  def create
    @capital = @user.capitals.build(capital_params)
    check_action(@capital.save, bad_path: :new)
  end

  def destroy
    @capital.destroy
    flash[:notice] = 'Transaction has successfully deleted!'
    redirect_to root_path
  end

  def edit
    @grouped_categories = grouped_categories
  end

  def new
    @capital = Capital.new(type: 'Income')
    @grouped_categories = grouped_categories
  end

  def update
    @grouped_categories = grouped_categories
    check_action(@capital.update!(capital_params), bad_path: :edit)
  end

  private

  def grouped_categories
    incomes, expenses = @user.categories.partition { |x| x.type == 'IncomeCategory' }
    [['Income', incomes.collect { |c| [c.title, c.id] }],
     ['Expense', expenses.collect { |c| [c.title, c.id] }]]
  end

  def capital_params
    params.require(:capital).permit(:implemented_at, :note, :value, :category_id, :type)
  end

  def set_capital
    @capital = Capital.find(params[:id])
  end
end
