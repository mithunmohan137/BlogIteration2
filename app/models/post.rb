class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :collaborators
  validates_presence_of :title
  validates_presence_of :body
  resourcify
end
