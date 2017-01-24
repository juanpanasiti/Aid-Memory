class ArticlesController < ApplicationController
  before_action :set_article, only: [:destroy, :edit, :update, :show]
  def new
    @letitul = 'Nuevo'
    @article = Article.new
  end

  def create
    @letitul = 'Nuevo'
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to root_path, notice: 'Artículo creado con éxito.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @letitul = 'Editar'
  end
  def update
    @letitul = 'Editar'
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Articulo editado.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to root_path, alert: 'Artículo eliminado.' }
    end
  end
  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:id, :title, :introduction, :published, :body, category_ids: [])
  end


end
