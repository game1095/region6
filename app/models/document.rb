class Document < ApplicationRecord
  belongs_to :confidential
  belongs_to :user
  belongs_to :department

end
