class ReportController < ApplicationController
  before_action :set_capitals, only: :show
  before_action :set_user, only: :show

  def show
    @categories = current_user.categories.partition do |c|
      c.type == 'IncomeCategory'
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def filters(h = {})
    params[:capital].each { |k, v| h[k] = v if v.present? } if params[:capital]
    h
  end

  def set_capitals
    @capitals = if filters.empty?
                  @user.capitals
                else
                  @user.capitals.where(filters)
                end
  end

  def set_user
    @user = User.includes(categories: [:capitals], capitals: [:category])
                .find(params[:user_id])
  end
end
