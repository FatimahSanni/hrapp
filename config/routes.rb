Rails.application.routes.draw do


  resources :exit_interviews

  resources :leave_rules

  resources :subdomains

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :tools

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  


  resources :company_assets

  resources :onboardings do
    resources :todos
  end

  resources :leaves

  resources :leave_types

  devise_for :users, skip: :registrations
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    patch 'users/:id' => 'devise/registrations#update', :as => 'user_registration' 
  end

  resources :interviews

  resources :people

  resources :notes

  resources :interview_reports

  resources :appraisals

  resources :file_uploads

  get 'dashboard' => 'pages#dashboard'

  resources :disciplinary_actions

  resources :actions

  resources :disciplinary_cases

  resources :announcements do
    resources :comments
  end

  resources :locations

  resources :work_shifts

  resources :job_categories

  resources :employment_types

  resources :job_titles

  resources :staff

  root 'pages#dashboard'
  mount Forem::Engine, :at => '/forums'

end
