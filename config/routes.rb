Rails.application.routes.draw do
resources :comments 
  devise_for :users
  
 root 'submissions#index'
 	#for root of application look in submissions folder, index file.
# for root look in the index.html.erb file.
 resources :submissions do 
  	member do
  		put "like", to: "submissions#upvote"
  		put "dislike", to: "submissions#downvote"
  	end
  	resources :comments
  end
end
