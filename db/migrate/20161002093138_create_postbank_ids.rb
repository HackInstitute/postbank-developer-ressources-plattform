class CreatePostbankIds < ActiveRecord::Migration
  def change
    create_table :postbank_ids do |t|
      t.string :uuid
      t.string :password
      t.timestamps null: false
    end
  end
end
