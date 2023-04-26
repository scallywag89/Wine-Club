class AddNameToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :name, :string
  end
end
