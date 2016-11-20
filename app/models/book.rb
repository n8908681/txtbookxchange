class Book < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :isbn, presence: true, length: { minimum: 10 }, length: { maximum: 13 }, :numericality => {:only_integer => true}
  validates :title, presence: true
  validates :author, presence: true
  validates :bookstatus, presence: true
end
