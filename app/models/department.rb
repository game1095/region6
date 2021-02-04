class Department < ApplicationRecord
  has_many :document
  has_many :user
end
