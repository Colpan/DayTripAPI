class RegionController < ApplicationController
  before_action :validate_user

  def index
    @regions = Region.where(nil)
    render json: @regions
  end

  private

    def validate_user

    end

end
