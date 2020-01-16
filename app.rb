require 'sinatra/base'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'index'
  end

  run! if app_file == $0
end