Project3::Application.routes.draw do
  
  scope :api do
    resources :users, except: [ :show, :new, :edit ], 
      defaults: { format: :json } do
    
      resources :challenges, except: [ :show, :new, :edit ], 
        defaults: { format: :json } do

        resources :milestones, except: [ :show, :new, :edit ], 
          defaults: { format: :json } do
          get ':id' => 'milestones#index', on: :collection
        end

        get ':id' => 'challenges#index', on: :collection
      end
      
      get ':id' => 'users#index', on: :collection
    end
  end

  root 'site#index'
end
