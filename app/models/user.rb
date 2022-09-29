class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_person_name

  validates :first_name, presence: true
  validates :last_name,  presence: true
  
  scope :all_except, -> (user) { where.not(id: user) }
  after_create_commit { broadcast_append_to "users" }
  has_many :messages
end
