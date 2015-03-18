class CityController < ApplicationController
  before_action :validate_user

  def index
    @cities = City.where(nil)
    render json: @cities
  end

  private

    def validate_user

    end

end
