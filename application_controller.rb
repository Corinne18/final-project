require 'bundler'
Bundler.require
require 'marvelite'
require 'pry'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    user_input = params["user_input".to_s]
  
    
    client = Marvelite::API::Client.new( :public_key => 'a727a4039a770719dcb5bfbadbb5f269', :private_key => 'f2227a210718dea1280e5a8cdbd69e326919738a')
   # @results =  client.character(user_input)
    @results1 = client.characters(:name => "#{user_input}")
    
    @results2 = @results1['data']['results'][0].first[1]
  
    @results = client.character(@results2)
    
    
      #binding.pry
   
    @indi_event = []
    
     @comics_with = @results['data']['results'][0]['comics']['available'] 

    #1009610
    
    #puts @results.raw_response
   #binding.pry
    
    @name = @results['data']['results'][0]['name']
    @desc = @results['data']['results'][0]['description']
   
   @initpic =  @results['data']['results'][0]['thumbnail']
   
    
    if @initpic== nil 
    @pic = "http://i60.tinypic.com/2z50shh.gif"   
  else 
   @pic = @results['data']['results'][0]['thumbnail']['path']+ "/portrait_xlarge.jpg"
    end
    
    
    @events = @results['data']['results'][0]['events']['items']
   
   
    @events.each do |num|
      results = num["name"]
      @indi_event << results
      
    end
    
    @indi_event = @indi_event.to_s.delete("]").delete("[")
    #binding.pry
  
    
    #take prices, take average of values
    
    erb :results
  end
  
  
  
  
end


post'/favorite' do
  
  @favorites = []
  @favorites << @name
end
