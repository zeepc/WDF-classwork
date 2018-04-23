require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
include  SendGrid




get '/' do 
	erb :index
end


post '/contact' do
  @name = params[:fullname]
  @comment = params[:comment]
 
puts 'blah'
puts 'ENV WORKS!!!!!!!!'
from = Email.new(email: @name)
to = Email.new(email: 'zperezcanals@gmail.com')
subject = 'Wendy vs Ronald'
content = Content.new(type: 'text/plain', value: @comment)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID'])
response = sg.client.mail._('send').post(request_body: mail.to_json)

end


