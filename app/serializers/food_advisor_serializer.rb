class FoodAdvisorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :how_big_meals :how_much_snacked :how_healthy
end
