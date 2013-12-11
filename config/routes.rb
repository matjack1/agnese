Agnese::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope "(:locale)", locale: /en|fr|it/ do
    resources :projects
  end

  root "projects#index"
  get '/:locale' => 'projects#index'
end

