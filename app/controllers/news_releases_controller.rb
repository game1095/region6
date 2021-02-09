class NewsReleasesController < ApplicationController
  before_action :authenticate_user! , only: [:create , :index , :edit , :destroy]
  load_and_authorize_resource
  def index
    @news = NewsRelease.all.order(created_at: :desc)
  end

  def new
    @new = NewsRelease.new
  end

  def create
    @new = NewsRelease.create(news_params)
    @new = current_user.NewsRelease.build(news_params)

    if @new.save
      redirect_to news_releases_path
    else
      render 'new'
    end
  end

  def edit
    @new = NewsRelease.find(params[:id])
  end

  def upadte
    @new = NewsRelease.find(params[:id])
    if @new.update(news_params)
      redirect_to news_releases_path
    else
      render 'edit'
    end
  end

  def destroy

  end

  def show
    @new = NewsRelease.find(params[:id])
  end
  private
    def news_params
      params.require(:news_release).permit(:title , :details , :title , {attachments: []})
    end
end
