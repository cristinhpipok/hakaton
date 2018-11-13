class Post < ApplicationRecord
   validates :title, presence: true, length: { minimum: 2 }
   validates :description, presence: true, length: { maximum: 500 }
   belongs_to :user
end
