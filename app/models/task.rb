class Task < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 10,
    too_long: "は%{count}文字以内で入力して下さい。" }
end
