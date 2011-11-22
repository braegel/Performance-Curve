class Fatigue < ActiveRecord::Base
  validates :user_id, :date, :fatigue, presence: true
  validates :fatigue, numericality: {greater_than_or_equal_to: 0}
  validates :fatigue, numericality: {less_than_or_equal_to: 100}
end
