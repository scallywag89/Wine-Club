class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :grape
      t.integer :year
      t.string :region
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
