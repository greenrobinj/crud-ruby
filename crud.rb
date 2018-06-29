require 'json'
require 'rubygems'
require 'httparty'


# JSON.parse(document)


def crud
  puts 'MENU'
  puts '1) get all useres'
  puts '2) get a single user'
  puts '3) create a new user'
  puts '4) delete user'
  puts '5) Exit'
end

def index
  @user =@user.all 
end

def show
  @user = User.find(params[:id])
end

def create
  @user = User.new(pages_params)
   @user.save
    redirect_to crud
end



url = ' http://json-server.devpointlabs.com/api/v1/users'
response = HTTParty.get(url)
response.parsed_response

crud

httparty " http://json-server.devpointlabs.com/api/v1/users"