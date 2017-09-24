Rails.application.routes.draw do

  devise_for :users
  resources :submissions do
  	member do
  		put "like", to: "submission#upvote"
  		put "dislike", to: "submission#downvote"
  	end
  	resources :comments
  end
root 'submissions#index'
#for root of application look in submissions folder, index file.
# for root look in the index.html.erb file.
end
