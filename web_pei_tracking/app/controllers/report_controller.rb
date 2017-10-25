class ReportController < ApplicationController
  before_action :set_filters

  def show
    @user = User.includes(:capitals, :categories).find(params[:user_id])
    @incomes, @expenses = @user.categories.partition { |category| category.type == 'IncomeCategory' }
    @capitals = @filters.empty? ? @user.capitals : @user.capitals.where(@filters)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def set_filters
    @filters = {}
    params[:capital].each { |k,v| @filters[k] = v if v.present? } if params[:capital]
  end

end
