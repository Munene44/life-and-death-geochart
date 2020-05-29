class CreateGeos < ActiveRecord::Migration[6.0]
  def change
    create_table :geos do |t|
      t.string :country
      t.string :expectancy

      t.timestamps
    end
  end
end
