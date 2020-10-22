class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  get "/new" do
    Dog.new("doggy", "colly", 3)
  end

  get "/dogs" do
    @dogs = Dog.all
    erb :dogs
  end

  get "/dogs_count" do
    @dog = Dog.count
    erb :dogs_count
  end
end
