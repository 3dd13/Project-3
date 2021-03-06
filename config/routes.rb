Project3::Application.routes.draw do
  
  scope :api do

    
    
    resources :milestones, except: [ :show, :new, :edit ], defaults: { format: :json } do
      get ':id' => 'milestones#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered

      put 'complete', on: :member
    end
    

    
    resources :challenges, except: [ :show, :new, :edit ], defaults: { format: :json } do
      get ':id' => 'challenges#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered

      put 'complete', on: :member

      resources :milestones, except: [ :show, :new, :edit ], defaults: { format: :json } do
        get ':id' => 'milestones#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered
      end

    end


    
    resources :users, except: [ :show, :new, :edit ], defaults: { format: :json } do

      
      resources :milestones, except: [ :show, :new, :edit ], defaults: { format: :json } do
        get ':id' => 'milestones#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered
      end

      
      resources :challenges, except: [ :show, :new, :edit ], defaults: { format: :json } do        

        resources :milestones, except: [ :show, :new, :edit ], defaults: { format: :json } do
          get ':id' => 'milestones#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered
        end

        get ':id' => 'challenges#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered        
      end


      get ':id' => 'users#index', on: :collection, constraint: /\d+,(\d+(,?)+)/, as: :filtered      
    end
    
    
  end

  root 'site#index'
end