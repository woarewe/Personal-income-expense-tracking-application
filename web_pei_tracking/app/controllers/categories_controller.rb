class CategoriesController < ApplicationController

  def new
    @category = Category.new(type: IncomeCategory)
  end

  def create
    @user = User.find(params[:user_id])
    @category = @user.categories.build(category_params)
    @category.save!
    redirect_to root_path
  end

  def destroy
  end

  def edit
    @category = Category.find(params[:id])

  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to root_path
  end

  private

  def category_params
    params.require(:category).permit(:title, :type)
  end
end
