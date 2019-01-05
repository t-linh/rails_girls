class AddColumnToComment < ActiveRecord::Migration[5.0]
  def change
    #add_column :table_name, :column_name, :type
    add_column :comments, :like_count, :string
    add_column :comments, :picture, :string
    add_column :comments, :reply_id, :integer
  end
end
