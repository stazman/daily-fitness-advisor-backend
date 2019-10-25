class CreateFoodAdvisors < ActiveRecord::Migration[5.2]
  def change
    create_table :food_advisors do |t|
      t.string :how_big_meals
      t.string :how_much_snacked
      t.string :how_healthy

      t.timestamps
    end
  end
end
