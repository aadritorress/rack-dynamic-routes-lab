

class Application

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

    if req.path.match (/items/)
        item_name = req.path.split("/items/").last 
       if item = @@items.find {|item| item.name == item_name}
            resp.write item.price
       else 
        resp.write "Item not found"
        resp.status = 400
       end 
    else
        resp.write "Route not found"
        resp.status = 404
     end 
     resp.finish
   end 
end 



#     end 
#         @@item.each do |item|
#         search_tearm = req.params ["item"]
#     if @@item.include?(search_term)
#         resp.write "#{item.price}"
#     else 
#         resp.write "404 Error"
#     end  
#     resp.finish
#     end 
# end 
# end 

# get '/' do

# end 
#     get '/testing' do 
#     "Route not found"
#     erb :item 
# end 

#     get '/items/name' do 
#    :name
# end 

#     get '/items/name' do 
# "Item not found"
# end 




# def call(env)
    # req.patch.match
    # @@item.each do |item|
#     search_tearm = req.params ["item"]
# if @@item.include?(search_term)
    # resp.write "#{item.price}"
# else 
#     resp.write "404 Error"
# end  
# resp.finish
# end 


# end 


# get '/item' do |item| item.name
# if item.name == item.price 
#     resp.write item 
# else 
#     resp.write "404 Error"
# end  
# end 
# resp.finish
# end 

# end