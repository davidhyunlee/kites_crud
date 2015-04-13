class CreateKites < ActiveRecord::Migration
  def change
    create_table :kites do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :manufacturer
      t.float :price
      t.float :quantity

      t.timestamps null: false
    end
  end
end
