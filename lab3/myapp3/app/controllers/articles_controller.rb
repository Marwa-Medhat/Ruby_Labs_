class ArticlesController < ApplicationController
  load_and_authorize_resource
  before_action :set_article, only: %i[ show edit update destroy ]
 

  def index
    @articles = Article.all
  end

  def indexweb1
    @articles = Article.all
    render :json =>  @articles 
    render json: { article: @articles, token: @token }, status: :created
  end

  def show
    @article = Article.find(params[:id])
    # authorize! :read, @article
  end

  def new
    @name=params["name"]
    @article = Article.new
  


  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)
    @article.userid=current_user.id
    puts "****************#{current_user.id}**********************************"
    puts "****************#{@article.userid}**********************************"
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    @article = Article.find(params[:id])
    # authorize! :edit, @article
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
    @article.destroy
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
