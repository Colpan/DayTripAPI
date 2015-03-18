class ActivityController < ApplicationController
  before_action :validate_user

  def index
    #require 'csv'
    #csv_text = File.read('/home/colpanius/Documents/active.csv')
    #csv = CSV.parse(csv_text, :headers => true)
    #csv.each do |row|
    #  Activity.create!(row.to_hash)
    #end
    @activities = Activity.where(nil)
    if params[:country]
      @activities = @activities.joins(:country).where(countries: { country: params[:country] })
    end
    if params[:state]
      @activities = @activities.joins(:state).where(states: { state: params[:state] })
    end
    if params[:region]
      @activities = @activities.joins(:region).where(regions: { region: params[:region] })
    end
    if params[:city]
      @activities = @activities.joins(:city).where(cities: { city: params[:city] })
    end
    if params[:zipcode]
      @activities = @activities.joins(:zipcode).where(zipcodes: { zipcode: params[:zipcode] })
    end
    if params[:rating]
      @activities = @activities.where(rating: params[:rating])
    end
    if params[:price]
      @activities = @activities.where(price: params[:price])
    end
    if params[:category]
      @activities = @activities.where(category: params[:category])
    end
    if params[:q]
      @activities = @activities.where('name LIKE ?', "%#{params[:q]}%")
    end
    render json: @activities
  end

  def show
    render json: Activity.where(id: params[:id])
  end

  private

    def validate_user

    end

end
