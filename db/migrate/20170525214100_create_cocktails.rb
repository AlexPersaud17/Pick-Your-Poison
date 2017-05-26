class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.boolean :isAlcoholic
      t.string :ingredients, array: true, default: []
      t.string :description
    end
  end
end
