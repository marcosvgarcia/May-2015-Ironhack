Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/search/:letter' => 'contacts#list_contacts_by_letter'
  get '/:contact_id/phonenumbers' => 'phonenumbers#index'
  get '/:contact_id/emails' => 'emails#index'
end
