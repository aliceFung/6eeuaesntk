class Shoe < ActiveRecord::Base
  belongs_to :user
  validates :brand, :model, :purchase_date, :year, presence: true
end
