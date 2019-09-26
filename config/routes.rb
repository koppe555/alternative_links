Rails.application.routes.draw do

  get 'first', to: 'alternative#first'
  get 'second', to: 'alternative#second'
  root 'alternative#main'
end
