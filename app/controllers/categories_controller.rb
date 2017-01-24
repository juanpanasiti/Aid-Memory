class CategoriesController < ApplicationController
  before_action :set_category, only: :destroy
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to root_path, notice: 'Category was successfully created.' }
      else
        format.html { render :create }
      end
    end
  end

  def destroy
    cat_id = @category.id
    if @category.delete
      relations = ArticleCategory.where(category_id: cat_id)
      relations.each do |rel|
        rel.delete
      end
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'Categoría eliminada.' }
      end
    end
  end

  protected

  def set_category
    @category = Category.find(params[:id])
  end
  def category_params
    params.require(:category).permit(:name, :color)
  end
end
