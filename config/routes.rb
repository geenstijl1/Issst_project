Rails.application.routes.draw do

  get 'search/create'
  scope '/admin' do
    resources :data
  end
  devise_for :users, :controllers => { registration: 'registration' }
  
  devise_scope :user do
      root 'devise/sessions#new'
  end

end
