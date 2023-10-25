Rails.application.routes.draw do
  root "client/dashboard#index"

  scope module: "client", path: "", as: "" do
    devise_for :accounts, path: "", path_names: { sign_in: "login", sign_out: "logout" }

    resources :records, only: [:new, :create, :show]
    resources :accounts, only: [:show]

    get "/search", to: "dashboard#search_kanji", as: :search_kanji
    get "/translate", to: "dashboard#translate", as: :translate
    get "/podcast", to: "dashboard#podcast", as: :podcast
  end
end
