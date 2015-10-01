class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :pricing
      t.references :category, index: true

      t.timestamps
    end
  end
end
