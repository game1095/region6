class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :level
  belongs_to :position
  belongs_to :department
  belongs_to :postoffice
  has_many :document
  has_many :NewsRelease
  has_many :banner
end
