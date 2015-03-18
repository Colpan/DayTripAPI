class Country < ActiveRecord::Base
  has_many :zipcode
  has_many :region
  has_many :city
  has_many :state
end
