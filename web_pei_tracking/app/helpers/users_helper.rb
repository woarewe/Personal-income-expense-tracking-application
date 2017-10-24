module UsersHelper
  def type_tag(object)
    text = object.type.split('Category').first
    case text
      when 'Income'
        '<strong class="text-green">' + text + '</strong>'
      when 'Expense'
        '<strong class="text-red">' + text + '</strong>'
    end
  end
end
