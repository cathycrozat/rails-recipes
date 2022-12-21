class RecipesController < ApplicationController

  def index
    if params[:query].present?
      @recipes = Recipe.where("dishname ILIKE ?", "%#{params[:query]}%")
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe)
      .permit(:dishname, :description, :photo)
  end

end
