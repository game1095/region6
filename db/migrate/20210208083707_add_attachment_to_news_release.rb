class AddAttachmentToNewsRelease < ActiveRecord::Migration[5.2]
  def change
    add_column :news_releases, :attachments, :string
  end
end
