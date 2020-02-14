class CreateEmailAddrs < ActiveRecord::Migration[6.0]
  def change
    create_table :email_addrs do |t|
      t.string :addr
      t.integer :stt
      t.timestamps
    end
  end
end
