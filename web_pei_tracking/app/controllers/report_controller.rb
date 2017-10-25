class ReportController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @incomes, @expenses = @user.categories.partition { |category| category.type == 'IncomeCategory' }

    if params[:capital]
        if params[:capital][:category_id]
          @capitals = @user.capitals.find_all { |x| x.category.id == params[:capital][:category_id].to_i }
        else
          @capitals = @user.capitals
        end
    else
      @capitals = @user.capitals
    end
  end

  private



end
