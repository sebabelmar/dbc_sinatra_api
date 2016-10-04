get '/' do

	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
	markdown.render("This is *bongos*, indeed.")
end

get '/bananas/:apples' do
	p params
	haml "%div.title Hello World of awesome fruits!! #{params['apples']}"
end

get '/html' do
	a = "HELLO HTML!!!!!!!!!qwq"

	<<-html
		<div> #{a} </div> 
	html
end

get '/bananas/index' do
	p params
	erb :index
end