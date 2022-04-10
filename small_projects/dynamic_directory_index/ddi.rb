require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/' do
  directory = './public'
  @title = directory
  @files = Dir.entries(directory).reject { |item| item.start_with?('.') }.sort
  @files.reverse! if params['order'] == 'desc'
  @current_time = Time.now
  erb :directory
end