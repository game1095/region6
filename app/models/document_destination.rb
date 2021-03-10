class DocumentDestination < ApplicationRecord
  belongs_to :document
  belongs_to :destination
end
