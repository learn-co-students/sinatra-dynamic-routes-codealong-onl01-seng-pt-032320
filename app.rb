require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @first = params[:num1].to_i
    @second = params[:num2].to_i
   
    product = @first * @second
    product.to_s
   

  end

end


# Using the example dynamic route that we included in the code-along as a
# template, create the following two routes:

# - `get '/goodbye/:name`, a dynamic route that returns
#   `"Goodbye, (person's name)."`, a string. For example, navigating to
#   `localhost:9393/goodbye/jerome` should display `Goodbye, jerome.`

# - A dynamic route starting with `/multiply` that accepts two params (num1 and
#   num2) and returns the product of the two numbers.