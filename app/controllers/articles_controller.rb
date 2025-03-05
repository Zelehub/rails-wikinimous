class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :destroy, :edit, :update]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save!
    redirect_to @article, notice: "Article created"
  end

  def edit
    # raise
  end

  def update
    @article.update(article_params)
    redirect_to @article, notice: "Article edited"
  end

  def destroy
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
