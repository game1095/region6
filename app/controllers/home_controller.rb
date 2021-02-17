class HomeController < ApplicationController
  def index
    @news = NewsRelease.limit(7).order(created_at: :desc)

    @document_urgent = Document.where(confidential_id: 2 , confidential_id: 3, confidential_id: 4 ).order(confidential_id: :DESC , created_at: :desc)
    @document_recent = Document.all.order(created_at: :desc).limit(10)

    @news_releases = NewsRelease.last
    respond_to do |format|
      format.html
      format.json { render json: DocumentDatatable.new(params) }
    end
  end
end
