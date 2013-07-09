class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :contact
      t.text :address
      t.text :phone
      t.text :website
      t.text :industry
      t.text :subindustry
      t.integer :minimum_order
      t.text :comments
      t.integer :ranking

      t.timestamps
    end
  end
end
