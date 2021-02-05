class DocumentsController < ApplicationController
  before_action :authenticate_user! , only: [:create , :index , :edit]
  def index
    @documents = Document.where(department_id: current_user.department_id )
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.create(document_params)
    @document = current_user.document.build(document_params)
    if @document.save
      redirect_to documents_path
    end
  end

  def edit

  end

  def update

  end

  def show
    @document = Document.find(params[:id])
  end

  def destroy

  end

  private
    def document_params
      params.require(:document).permit(:number , :dated , :title , :details , :remark ,
                                        :confidential_id , :department_id , {attachments: []})
    end
end
