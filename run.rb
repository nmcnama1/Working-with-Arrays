require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do
  @years = Array (1995..Time.now.year) # nice!

  # code!
  erb :years, layout: :main
end

get '/states' do
  # code!
  @states = ['Montana', 'Florida', 'California', 'Texas', 'Michigan', 'Missouri', 'Oregon', 'Georgia', 'West Virginia', 'Virginia', 'Maryland']
  @states.sort
  @states.sort!
  erb :states, layout: :main
end
