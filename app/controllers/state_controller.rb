class StateController < ApplicationController
  before_action :validate_user

  def index
    @states = State.where(nil)
    render json: @states
  end

  private

    def validate_user

    end

end
