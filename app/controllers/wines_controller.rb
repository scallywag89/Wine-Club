class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)

    if @wine.save
      redirect_to @wine
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])

    if @wine.update(wine_params)
      redirect_to @wine
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def wine_params
    params.require(:wine).permit(
      :name,
      :look_intensity,
      :color,
      :viscosity,
      :smell_intensity,
      :sweetness,
      :acidity,
      :tannin,
      :alcohol,
      :body
    )
  end
end
