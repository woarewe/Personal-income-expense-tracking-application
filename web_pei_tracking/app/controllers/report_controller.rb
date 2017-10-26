class ReportController < ApplicationController
  before_action :set_capitals

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
    filters
  end

  def set_capitals
    @capitals = if filters.empty?
                  current_user.capitals
                else
                  current_user.capitals.where(filters)
                end
  end
end
