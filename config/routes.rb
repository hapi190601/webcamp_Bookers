Rails.application.routes.draw do
  root 'bookers#top'

  get 'books' => 'bookers#index' , as: "index"

  get 'books/:id' => 'bookers#show' , as: 'show'

  get 'books/:id/edit' => "bookers#edit" , as: 'edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "books" => "bookers#create"

  patch "books/:id" => "bookers#update" , as: "update"

  delete "books/:id" => "bookers#destroy" , as: "destroy"
end
