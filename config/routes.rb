Rails.application.routes.draw do
  namespace :v1, defaults: {format: :json} do
    resources :contacts, only: :create
    resources :wake_up, only: :index
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
