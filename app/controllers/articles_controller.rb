# Language: Ruby, Level: Level 3
class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: {message: 'Products found', data: Article.all}, status: 200
end

  def create
    Article.create(book: params[:book], pen: params[:pen], scale: params[:scale], pencil: params[:pencil], eraser: params[:eraser], plaster: params[:plaster], stapular: params[:stapular], stamp: params[:stamp])
    render json: {message: "Articles data found"}
  end

  def show
    @article = Article.find(params["id"])
    puts @article
    render json: @article, status: 200
  end

  def update
    @article = Article.find(params["id"])
    @article.update(book: params[:book], pen: params[:pen], scale: params[:scale], pencil: params[:pencil], eraser: params[:eraser], plaster: params[:plaster], stapular: params[:stapular], stamp: params[:stamp])
    render json: @article, status:200
  end
end
