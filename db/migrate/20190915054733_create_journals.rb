class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.text :content

      t.timestamps
    end
  end
end
