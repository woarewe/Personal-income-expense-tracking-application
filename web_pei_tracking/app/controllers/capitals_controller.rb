class CapitalsController < ApplicationController
  before_action :set_capital, only: %i[edit update destroy]
  before_action :set_user, except: [:destroy]
  before_action :set_categories, except: [:destroy]

  def create
    @capital = @user.capitals.build(capital_params)
    check_action(@capital.save, bad_path: :new)
  end

  def destroy
    @capital.destroy
    flash[:notice] = 'Transaction has successfully deleted!'
    redirect_to root_path
  end

  def edit; end

  def new
    @capital = Capital.new(type: 'Income')
  end

  def update
    check_action(@capital.update(capital_params), bad_path: :edit)
  end

  private

  def capital_params
    params.require(:capital).permit(:implemented_at,
                                    :note,
                                    :value,
                                    :category_id,
                                    :type)
  end

  def set_capital
    @capital = Capital.find(params[:id])
  end

  def set_categories
    @categories = @user.categories.partition do |c|
      c.instance_of? IncomeCategory
    end
  end
end

