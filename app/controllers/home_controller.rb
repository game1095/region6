class HomeController < ApplicationController
  def index
    @documents = Document.all.order(confidential_id: :desc , dated: :desc)
    @news = NewsRelease.limit(3).order(created_at: :desc)

    respond_to do |format|
      format.html
      format.json { render json: DocumentDatatable.new(params) }
    end
  end
end
