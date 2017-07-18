require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	post '/piglatinize' do
		@pig_latinized_text = PigLatinizer.new
		@words = params[:user_phrase]

		erb :results
	end

end