Rails.application.routes.draw do

  get '/:id' => 'redirectioner#redirect'
  get '/' => 'redirectioner#index'
end
