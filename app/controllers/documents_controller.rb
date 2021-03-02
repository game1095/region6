class DocumentsController < ApplicationController
  before_action :authenticate_user! , only: [:create , :edit , :destroy]
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction

  def index
    if user_signed_in?
      @documents = Document.search(params[:search]).where(department_id: current_user.department_id).order(confidential_id: :desc).paginate(page: params[:page])
    else
      @documents = Document.all.search(params[:search]).order(confidential_id: :desc).paginate(page: params[:page])
    end
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.create(document_params)
    @document = current_user.document.build(document_params)
    if @document.save
      redirect_to documents_path
    else
      render 'new'
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
      redirect_to documents_path
    else
      render 'edit'
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  def destroy
    @document = Document.find(params[:id])
    if @document.destroy
      redirect_to documents_path
    end
  end

  private
    def document_params
      params.require(:document).permit(:number , :dated , :title , :details , :remark ,
                                        :confidential_id , :department_id , :send_date , {attachments: []} , destination_ids:[])
    end
end
