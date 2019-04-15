class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.text :name
      t.text :country_code
      t.text :description
      t.integer :average_price
      t.integer :views_count

      t.timestamps
    end
  end
end
