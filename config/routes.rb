Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do
      resources :activity
      get 'zipcodes', to: "zipcode#index"
      get 'cities', to: "city#index"
      get 'regions', to: "region#index"
      get 'states', to: "state#index"
      get 'countries', to: "country#index"
    end
  end
end
