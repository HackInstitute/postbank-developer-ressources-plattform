class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :email
      t.string :booking_id
      t.string :certificate_link

      t.timestamps null: false
    end
  end
end
