class Post < ApplicationRecord
  belongs_to :user
  validates :text, :title, presence: true
end
