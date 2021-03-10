class Document < ApplicationRecord
  belongs_to :confidential
  belongs_to :user
  belongs_to :department
  has_many :document_destination
  has_many :destinations , through: :document_destination
  mount_uploaders :attachments, AttachmentUploader
  serialize :attachments, JSON
  self.per_page = 10

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def truncate_title
    if self.title != nil
      self.title.truncate(100 , omission: '... (คลิกเพื่ออ่านเพิ่มเติม)')
    end
  end

  def truncate_details
    if self.details != nil
      self.details.truncate(250 , omission: '... (คลิกเพื่ออ่านเพิ่มเติม)')
    end
  end

  def truncate_home_title
    if self.title != nil
      self.title.truncate(50 , omission: "...(คลิกเพื่ออ่านเพิ่มเติม)")
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
