class Banner < ApplicationRecord
  belongs_to :user
  mount_uploader :attachments, AttachmentUploader
end
