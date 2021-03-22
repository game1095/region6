class NewsRelease < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  mount_uploaders :attachments, AttachmentUploader
  serialize :attachments, JSON

  def truncate_details_news
    if self.details != nil
      self.details.truncate(250 , omission: '... (คลิกเพื่ออ่านเพิ่มเติม)')
    end
  end
end
