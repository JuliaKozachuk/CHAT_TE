class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :telephone
      t.string :email
      t.string :avatar
      t.string :username
      t.string :bio

      t.timestamps
    end
  end
end
