class CreateFoodAdvisors < ActiveRecord::Migration[5.2]
  def change
    create_table :food_advisors do |t|
      t.integer :how_big_meals
      t.integer :how_much_snacked
      t.integer :how_healthy

      t.timestamps
    end
  end
end
