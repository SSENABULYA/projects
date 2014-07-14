class CreateRegistrationForms < ActiveRecord::Migration
  def change
    create_table :registration_forms do |t|
      t.string :last_Name
      t.string :first_Name
      t.string :country
      t.string :city
      t.integer :telephone_Number
      t.string :street
      t.string :email

      t.timestamps
    end
  end
end
