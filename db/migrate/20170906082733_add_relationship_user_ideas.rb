class AddRelationshipUserIdeas < ActiveRecord::Migration[5.0]
  def change
    #add_column :table_name, :column_name, :type
    add_column :ideas, :user_id, :integer
  end
end
