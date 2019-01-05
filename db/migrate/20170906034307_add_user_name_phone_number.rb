class AddUserNamePhoneNumber < ActiveRecord::Migration[5.0]
  def change
    #add_column :table_name, :column_name, :type
    add_column :users, :user_name, :string
    add_column :users, :phone, :string
  end
end
