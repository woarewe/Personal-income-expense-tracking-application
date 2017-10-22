class CapitalsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @capital = @user.capitals.build(capital_params)
    set_type
    @capital.save!
    redirect_to root_path
  end

  def destroy
  end

  def edit
  end

  def new
    @capital = Capital.new
    @grouped_categories = grouped_categories
  end

  private

  def grouped_categories
    incomes, expenses = Category.all.partition { |x| x.type == 'IncomeCategory' }
    [['Income', incomes.collect { |c| [c.title, c.id] }],
     ['Expense', expenses.collect  {|c| [c.title, c.id] }]]
  end

  def capital_params
    params.require(:capital).permit(:implemented_at, :note, :value, :category_id)
  end

  def set_type
    category = Category.find(@capital.category.id)
    @capital.type = category.type.split('Category').first
  end
end
