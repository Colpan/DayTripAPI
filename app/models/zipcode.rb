class Zipcode < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  belongs_to :region
  belongs_to :country
end
