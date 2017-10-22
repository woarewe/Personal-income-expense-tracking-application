module CategoriesHelper
  def type_category_tag(category)
    text = category.type.split('Category').first
    case category.type
      when 'IncomeCategory'
        '<strong class="text-green">' + text + '</strong>'
      when 'ExpenseCategory'
      '<strong class="text-red">' + text + '</strong>'
    end
  end
end
