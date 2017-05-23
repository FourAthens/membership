# == Route Map
#
#                   Prefix Verb   URI Pattern                        Controller#Action
#                     page GET    /pages/*id                         pages#show
#                     root GET    /                                  visitors#index
#         new_user_session GET    /users/sign_in(.:format)           users/sessions#new
#             user_session POST   /users/sign_in(.:format)           users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)          users/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#            user_password PATCH  /users/password(.:format)          devise/passwords#update
#                          PUT    /users/password(.:format)          devise/passwords#update
#                          POST   /users/password(.:format)          devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)            users/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)           users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              users/registrations#edit
#        user_registration PATCH  /users(.:format)                   users/registrations#update
#                          PUT    /users(.:format)                   users/registrations#update
#                          DELETE /users(.:format)                   users/registrations#destroy
#                          POST   /users(.:format)                   users/registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format)  devise/confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)      devise/confirmations#show
#                          POST   /users/confirmation(.:format)      devise/confirmations#create
#   accept_user_invitation GET    /users/invitation/accept(.:format) devise/invitations#edit
#   remove_user_invitation GET    /users/invitation/remove(.:format) devise/invitations#destroy
#      new_user_invitation GET    /users/invitation/new(.:format)    devise/invitations#new
#          user_invitation PATCH  /users/invitation(.:format)        devise/invitations#update
#                          PUT    /users/invitation(.:format)        devise/invitations#update
#                          POST   /users/invitation(.:format)        devise/invitations#create
#                    users GET    /users(.:format)                   users#index
#                          POST   /users(.:format)                   users#create
#                 new_user GET    /users/new(.:format)               users#new
#                     user GET    /users/:id(.:format)               users#show
#                          DELETE /users/:id(.:format)               users#destroy
#            organizations GET    /organizations(.:format)           organizations#index
#                          POST   /organizations(.:format)           organizations#create
#         new_organization GET    /organizations/new(.:format)       organizations#new
#        edit_organization GET    /organizations/:id/edit(.:format)  organizations#edit
#             organization GET    /organizations/:id(.:format)       organizations#show
#                          PATCH  /organizations/:id(.:format)       organizations#update
#                          PUT    /organizations/:id(.:format)       organizations#update
#                          DELETE /organizations/:id(.:format)       organizations#destroy
#                    plans GET    /plans(.:format)                   plans#index
#                          POST   /plans(.:format)                   plans#create
#                 new_plan GET    /plans/new(.:format)               plans#new
#                edit_plan GET    /plans/:id/edit(.:format)          plans#edit
#                     plan GET    /plans/:id(.:format)               plans#show
#                          PATCH  /plans/:id(.:format)               plans#update
#                          PUT    /plans/:id(.:format)               plans#update
#                          DELETE /plans/:id(.:format)               plans#destroy
#                 profiles GET    /profiles(.:format)                profiles#index
#                          POST   /profiles(.:format)                profiles#create
#              new_profile GET    /profiles/new(.:format)            profiles#new
#             edit_profile GET    /profiles/:id/edit(.:format)       profiles#edit
#                  profile GET    /profiles/:id(.:format)            profiles#show
#                          PATCH  /profiles/:id(.:format)            profiles#update
#                          PUT    /profiles/:id(.:format)            profiles#update
#                          DELETE /profiles/:id(.:format)            profiles#destroy
#

Rails.application.routes.draw do

  get "pages/*id" => 'pages#show', as: :page, format: false
  root to: 'visitors#index'
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  resources :users, except: [:edit, :update]
  resources :organizations
  resources :plans
  resources :profiles
end
