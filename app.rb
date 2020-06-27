require_relative 'config/environment'

class App < Sinatra::Base
  get "/goodbye/:name" do
    "Goodbye, #{params[:name]}."
  end
  
  get "/multiply/:num1/:num2" do
    "#{params[:num1].to_i*params[:num2].to_i}"
  end
end