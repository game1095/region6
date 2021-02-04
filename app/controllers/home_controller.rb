class HomeController < ApplicationController
  def index
    @documents = Document.all.order(confidential_id: :DESC)
  end
end
