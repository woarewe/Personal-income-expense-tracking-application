class ReportController < ApplicationController
  def show
    @categories = current_user.categories.partition { |c| c.type == 'IncomeCategory'}
    @capitals = filters.empty? ? current_user.capitals : current_user.capitals.where(filters)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def filters(filters = {})
    params[:capital].each { |k, v| filters[k] = v if v.present? } if params[:capital]
    filters
  end
end
