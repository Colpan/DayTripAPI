class CountryController < ApplicationController
  before_action :validate_user

  def index
    @countries = Country.where(nil)
    render json: @countries
  end

  private

    def validate_user

    end

end
