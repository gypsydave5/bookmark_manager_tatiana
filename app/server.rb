require 'data_mapper'
require 'sinatra/base'
require 'rack-flash'

Dir["./lib/*"].each {|model| require model}
Dir[ "./controllers/*" ].each {|controller| require controller}

require_relative 'helpers/application'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
	enable :sessions
	use Rack::Flash

	set :session_secret, 'super secret'
	set :views, File.join(root, '..', '/app/views')
	set :public_folder, File.join(root, '..', '/app/public')

	run! if app_file == $0
end
