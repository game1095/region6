class BannersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @banners = Banner.all.order(created_at: :desc)
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.create(banner_params)
    @banner = current_user.banner.build(banner_params)
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  private
    def banner_params
      params.require(:banner).permit(:attachments)
    end
end
