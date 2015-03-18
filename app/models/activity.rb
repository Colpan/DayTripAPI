class Activity < ActiveRecord::Base
  validates :name, presence: true
  validates :category, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  belongs_to :city
  belongs_to :state
  belongs_to :region
  belongs_to :country
  belongs_to :zipcode
end
