require 'sinatra'

get '/' do
  if params[:problem]
    redirect "/#{params[:problem]}"
  else
    erb :index
  end
end

get '/:problem' do
  @problem = CGI.unescape params[:problem]
  erb :show
end
