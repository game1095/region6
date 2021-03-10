class Destination < ApplicationRecord
  has_many :document_destination
  has_many :documents , through: :document_destination
end
