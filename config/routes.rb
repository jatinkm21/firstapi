Rails.application.routes.draw do
  post 'summation', to: 'calculator#sum' 
  get 'summation', to: 'calculator#index' 

  post 'multiplication', to: 'calculator#multiply' 
  get 'multiplication', to: 'calculator#index' 

  post 'division', to: 'calculator#divide' 
  get 'division', to: 'calculator#index' 

  post 'subtraction', to: 'calculator#subtract' 
  get 'subtraction', to: 'calculator#index' 
end
