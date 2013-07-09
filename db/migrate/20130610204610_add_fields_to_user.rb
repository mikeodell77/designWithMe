class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cell_phone, :string
    add_column :users, :home_phone, :string
    add_column :users, :industry, :text
    add_column :users, :member, :boolean
    add_column :users, :admin, :boolean
    add_column :users, :website, :text
  end
end
