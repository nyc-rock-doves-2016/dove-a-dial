class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :label
      t.string :number

      t.timestamps null: false
    end
  end
end
