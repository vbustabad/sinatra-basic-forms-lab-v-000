require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    new_puppy = params[:puppy]
    new_breed = params[:breed]
    new_age = params[:age]
    @puppy_information = Puppy.new(new_puppy, new_breed, new_age)

    erb :display_puppy
  end

end
