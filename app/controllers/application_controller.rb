# frozen_string_literal: true

# main controller for application
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    { message: 'Welcome to our project!' }.to_json
  end
end
