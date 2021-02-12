Rails.application.routes.draw do
  root 'bookers#top'

  get 'bookers/index' , as: "index"
  get 'bookers/:id' => 'bookers#show' , as: 'show'
  get 'bookers/:id/edit' => "bookers#edit" , as: 'edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "bookers" => "bookers#create"

  patch "bookers/:id" => "bookers#update" , as: "update"

  delete "bookers/:id" => "bookers#destroy" , as: "destroy"
end
