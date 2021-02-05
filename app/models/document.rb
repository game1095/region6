class Document < ApplicationRecord
  belongs_to :confidential
  belongs_to :user
  belongs_to :department

  mount_uploaders :attachments, AttachmentUploader
  serialize :attachments, JSON
  def truncate_title
    if self.title != nil
      self.title.truncate(100 , omission: '... (คลิกเพื่ออ่านเพิ่มเติม)')
    end
  end
end
