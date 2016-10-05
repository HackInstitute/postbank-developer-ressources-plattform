class CreateAuthenticationKeys < ActiveRecord::Migration
  def change
    create_table :authentication_keys do |t|
      t.string :auth_key
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
