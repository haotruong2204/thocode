Rails.application.routes.draw do
  root "client/dashboard#index"

  scope module: "client", path: "", as: "" do
    devise_for :accounts, path: "", path_names: { sign_in: "login", sign_out: "logout" }

    resources :records, only: [:new, :create, :show] do 
      member do
        get :hira_kata
        get :radical
      end
    end
    resources :accounts, only: [:show] do
      member do
        get :billing_history
      end
    end

    get "/search", to: "dashboard#search_kanji", as: :search_kanji
    get "/translate", to: "dashboard#translate", as: :translate
    get "/podcast", to: "dashboard#podcast", as: :podcast
    get "/checkout", to: "dashboard#checkout", as: :checkout
    get "/contact", to: "dashboard#contact", as: :contact
  end

  namespace :admin do
    root "dashboard#index"
   
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" }

    resources :accounts
    resources :histories, only: [:index, :show]
    resources :kanjis
    resources :story_kanjis
  end
end
