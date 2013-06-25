class CreateProds < ActiveRecord::Migration
  def change
    create_table :prods do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
