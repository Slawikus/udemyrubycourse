require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sinatra"
  end
  get '/:age' do |age|
    "Hi your age is #{age} years old"
  end
end