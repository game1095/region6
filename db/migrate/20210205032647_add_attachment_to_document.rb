class AddAttachmentToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :attachments, :string
  end
end
