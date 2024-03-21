Rails.application.routes.draw do
  #get 'books/new'#いらない→indexの中にnewアクションを入れてしまう
  #get 'books/index'#books
  #get 'books/show'#books/id
  #get 'books/edit'#books/id/edit
  get '/', to:'homes#top'
  
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
