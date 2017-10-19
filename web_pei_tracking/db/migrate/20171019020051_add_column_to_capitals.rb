class AddColumnToCapitals < ActiveRecord::Migration[5.1]
  def change
    add_column :capitals, :implemented_at, :date
  end
end
