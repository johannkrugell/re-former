class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, limit: 20
      t.string :email, null: false, limit: 50
      t.string :password, null: false, limit: 50
      t.timestamps
    end
  end
end
