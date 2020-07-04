class Post < ApplicationRecord
  validates :text, :title, presence: true
  belongs_to :user
  has_many :comments,dependent: :destroy
end
