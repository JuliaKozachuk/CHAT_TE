class CreateGroupsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_users, id: false do |t|
      t.integer :user_id
      t.integer :group_id
      

      t.timestamps
    end
  end
end
