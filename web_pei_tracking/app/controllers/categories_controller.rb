class CategoriesController < ApplicationController
  before_action :set_category, only: %i[destroy edit update]

  def new
    @category = Category.new(type: IncomeCategory)
  end

  def create
    @user = User.find(params[:user_id])
    @category = @user.categories.build(category_params)
    check_action(@category.save, bad_path: :new)
  end

  def destroy
    @category.destroy
    flash[:notice] = t('categories.notice')
    redirect_to root_path
  end

  def edit; end

  def update
    check_action(@category.update(category_params), bad_path: :edit)
  end

  private

  def category_params
    params.require(:category).permit(:title, :type)
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def set_user
    @user = User.includes(categories: [:capitals], capitals: [:category])
                .find(params[:user_id])
  end
end
