class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :replies, class_name: "Comment", foreign_key: :reply, dependent: :destroy
  validates :title, :text, presence: true
end
