get '/' do

	@a = 'hey'

	haml '%div.title Hello World'
end

get '/bananas/:apples' do
	p params
	haml "%div.title Hello World of awesome fruits!! #{params['apples']}"
end

get '/html' do
	a = "IM A"

	<<-html
		<div> #{a} </div> 
	html
end

get '/bananas/index' do
	p params
	erb :index
end