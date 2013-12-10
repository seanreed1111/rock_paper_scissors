rock_paper_scissors
===================

New Sinatra app - rock paper scissors

############
Instructions
############
Instructions
Scaffold your app
Create your ruby app file

    Create a folder called rock_paper_scissor
    Create a file called game.rb
    In this file, require Sinatra
    Create a Game module to wrap your app in.
    Inside the Game module, create a RPS_App class that extends Sinatra::Application

Create your rack file

    Create a file called config.ru
    Inside config.ru require game
    Then call a run to your app (don't forget that it is wrapped in a module!)

Create the game

Our app will be played at the path /throw. To play, a user will hit /throw/:type, for example: /throw/rock will play rock.

    Define a route at /throw that responds to a get request and takes a single parameter called :type
    This route should randomly generate a move by the computer.
    The computer move and user move should be compared.
    The results of the match should be displayed on the page.

Extensions

    Create an error if the user tries to throw an incorrect move.
    Extend the game to include a new move, see RPS Variations.
    Creating a landing page with links, so one does not need to edit the URL in the browser.
    Make it look pretty!






##########
Routes
##########
In Sinatra, a route is an HTTP method paired with a URL-matching pattern. Each route is associated with a block:

get '/' do
  .. show something ..
end

post '/' do
  .. create something ..
end

put '/' do
  .. replace something ..
end

patch '/' do
  .. modify something ..
end

delete '/' do
  .. annihilate something ..
end

options '/' do
  .. appease something ..
end

link '/' do
  .. affiliate something ..
end

unlink '/' do
  .. separate something ..
end

Routes are matched in the order they are defined. The first route that matches the request is invoked.

Route patterns may include named parameters, accessible via the params hash:

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

You can also access named parameters via block parameters:

get '/hello/:name' do |n|
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  # n stores params[:name]
  "Hello #{n}!"
end

Route patterns may also include splat (or wildcard) parameters, accessible via the params[:splat] array:

get '/say/*/to/*' do
  # matches /say/hello/to/world
  params[:splat] # => ["hello", "world"]
end

get '/download/*.*' do
  # matches /download/path/to/file.xml
  params[:splat] # => ["path/to/file", "xml"]
end

Or with block parameters:

get '/download/*.*' do |path, ext|
  [path, ext] # => ["path/to/file", "xml"]
end

Route matching with Regular Expressions:

get %r{/hello/([\w]+)} do
  "Hello, #{params[:captures].first}!"
end

Or with a block parameter:

get %r{/hello/([\w]+)} do |c|
  "Hello, #{c}!"
end

Route patterns may have optional parameters:

get '/posts.?:format?' do
  # matches "GET /posts" and any extension "GET /posts.json", "GET /posts.xml" etc.
end

By the way, unless you disable the path traversal attack protection (see below), the request path might be modified before matching against your routes.