class CreateCapitals < ActiveRecord::Migration[5.1]
  def change
    create_table :capitals do |t|
      t.string :type
      t.text :note
      t.decimal :value, precision: 10, scale: 2
      t.date :implemented_at
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
