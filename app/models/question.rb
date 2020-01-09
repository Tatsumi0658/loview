class Question < ApplicationRecord
  validates :user_name, presence: true, length:{ maximum: 50 }
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 1000 }
end
