class AddDateToJournals < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :date, :string
  end
end
