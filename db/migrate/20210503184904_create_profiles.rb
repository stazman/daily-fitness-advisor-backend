class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
