Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]

  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  scope '/admin' do
    resources :users
    post '/users/:id/resetpassword', to: 'users#resetpassword', as: 'reset_user_password'
    post '/users/:id/toggleadmin', to: 'users#toggleadmin', as: 'toggle_user_admin'
  end

  get 'welcome/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
end
