class RenameUserIdToAutorId < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :user_id, :integer
    add_column :messages, :autor_id, :integer
  end
end
