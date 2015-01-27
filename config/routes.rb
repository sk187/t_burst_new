Rails.application.routes.draw do
  root 'welcome#index'
  get 'layouts/index'
  get 'welcome/index'
end
