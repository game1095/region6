class HomeController < ApplicationController
  def index
    @news = NewsRelease.limit(7).order(created_at: :desc)

    @document_urgent = Document.where(confidential_id:2).or(Document.where(confidential_id:3)).or(Document.where(confidential_id:4)).limit(20).order(confidential_id: :desc , created_at: :asc)                    
    @document_recent = Document.all.order(created_at: :desc).limit(16)

    @news_releases = NewsRelease.last

    # Banner
    @banners = Banner.limit(5).order(created_at: :desc)

    respond_to do |format|
      format.html
      format.json { render json: DocumentDatatable.new(params) }
    end
  end
end
