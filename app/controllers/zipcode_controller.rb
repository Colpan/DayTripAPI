class ZipcodeController < ApplicationController
  before_action :validate_user

  def index
    @zipcodes = Zipcode.where(nil)
    render json: @zipcodes
  end

  private

    def validate_user

    end

end
