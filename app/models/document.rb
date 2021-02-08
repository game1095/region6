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

  def speed_color
    if self.confidential != nil
      if self.confidential_id == 1
        return "badge badge-plain"
      elsif self.confidential_id == 2
        return "badge badge-primary"
      elsif self.confidential_id == 3
        return "badge badge-warning"
      elsif self.confidential_id == 4
        return "badge badge-danger"
      end
    end
  end
end
