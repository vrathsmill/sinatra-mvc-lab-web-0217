require_relative 'config/environment'

 class App < Sinatra::Base
   	  
   get '/' do
     erb :user_input
   end

   post '/piglatinize' do
     pig = PigLatinizer.new
     @piglatin = pig.to_pig_latin(params[:user_phrase])
   end

 end
