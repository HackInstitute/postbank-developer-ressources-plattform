class AddUserIdToPostbankId < ActiveRecord::Migration
  def change
    add_column :postbank_ids, :user_id, :integer
  end
end
