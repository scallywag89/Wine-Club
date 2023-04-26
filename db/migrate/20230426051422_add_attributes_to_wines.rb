class AddAttributesToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :look_intensity, :string
    add_column :wines, :color, :string
    add_column :wines, :viscosity, :string
    add_column :wines, :smell_intensity, :string
    add_column :wines, :sweetness, :string
    add_column :wines, :acidity, :string
    add_column :wines, :tannin, :string
    add_column :wines, :alcohol, :string
    add_column :wines, :body, :string
  end
end
