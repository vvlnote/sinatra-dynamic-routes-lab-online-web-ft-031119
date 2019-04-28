require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end
  
  get '/square/:number' do
    num = params[:number].to_i
    "#{num*num}"
  end
  
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{num}, #{phrase}"
    str = []
    for i in 1..num
      str << phrase
    end
    "#{str}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params[:word1] + ", " + params{:word2] + ", " + params[:word3] + ", " + params[:word4] + ", " + params[:word5]
    
    "#{str}"
  end
  
end