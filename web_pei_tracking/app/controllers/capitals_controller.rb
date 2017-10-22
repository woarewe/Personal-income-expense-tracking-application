class CapitalsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @capital = @user.capitals.build(capital_params)
    @capital.save!
    redirect_to root_path
  end

  def destroy
  end

  def edit
    @capital = Capital.find(params[:id])
    @grouped_categories = grouped_categories
  end

  def new
    @capital = Capital.new(type: 'Income')
    @categories = Category.all
    @grouped_categories = grouped_categories
  end

  def update
    @capital = Capital.find(params[:id])
    @capital.update!(capital_params)
    redirect_to root_path
  end

  private

  def grouped_categories
    incomes, expenses = Category.all.partition { |x| x.type == 'IncomeCategory' }
    [['Income', incomes.collect { |c| [c.title, c.id] }],
     ['Expense', expenses.collect { |c| [c.title, c.id] }]]
  end

  def capital_params
    params.require(:capital).permit(:implemented_at, :note, :value, :category_id, :type)
  end
end
