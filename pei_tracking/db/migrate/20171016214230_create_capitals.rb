class CreateCapitals < ActiveRecord::Migration[5.1]
  def change
    create_table :capitals do |t|
      t.string :note
      t.decimal :value, precision: 5, scale: 2
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
