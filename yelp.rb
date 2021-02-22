# a resturuant looks like this
# res_data = {
#   id: INTEGER *MUST BE UNIQUE,
#   name: STRING,
#   location: {
#     city: STRING,
#     state: STRING,
#   },
#   delivery: BOOLEAN,
#   days_open: STRING *DAYS SEPERATED BY COMMAS(NO SPACES),
#   likes: INTEGER,
#   dishes: ARRAY OF OBJECTS/HASHES
#     { name: STRING, price: FLOAT, ingredients: ARRAY OF STRINGS },
#   ],
#   reviews: ARRAY OF HASHES [
#     {user_id: INTEGER *id of user object, rating: INTEGER 0-5}
#   ]
# }



user1 = {
  id: 1,
  name: "Tony",
}
user2 = {
  id: 2,
  name: "Sally",
}
res1 = {
  id: 1,
  name: "Spicy Thai",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: true,
  days_open: "mon,tues,wed,thur,fri,sat,sun",
  likes: 1000,
  dishes: [
    { name: "Pad Thai", price: 10.25, ingredients: ["noddles", "peppers"] },
    { name: "Drunken Noodle", price: 9.25, ingredients: ["noddles", "chicken"] },
  ],
  reviews: [
    { user_id: 1, rating: 5 },
    { user_id: 2, rating: 3 },
  ],
}
res2 = {
  id: 2,
  name: "Albertos",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: false,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 500,
  dishes: [
    { name: "Tacos", price: 8.25, ingredients: ["tortilla", "carne"] },
    { name: "Quesidalla", price: 9.25, ingredients: ["tortilla", "cheese"] },
  ],
  reviews: [
    { user_id: 1, rating: 2 },
    { user_id: 2, rating: 4 },
  ],
}
#create a method that takes a restaurant and returns a formatted string
def res_info (res)
  id = res[:id]
  name = res [:name]
  location = res [:location]
  days_open = res [:days_open]
  likes = res [:likes]
return "#{id}: #{name} Located at: #{location} Open: #{days_open} has #{likes} likes: "
end

puts res_info(res1)
puts "---------"

#create a method takes a restruant and returnd the menu
  def res_menu (menu)
    id = menu[:id]
    name = menu[:name]
    dishes = menu[:dishes]
    return "#{id}: #{name}: Menu consists of #{dishes} and #{dishes}."
  end
 puts res_menu(res1)

 #create method that takes restaurant and returns average review
puts "----------"
 
def res_review(review)
  id = review[:id]
  name = review [:name]
   posts_amount = review [:reviews].length
   return "#{id}: #{name} has #{[:reviews].length} review"
end

puts res_review(res1)

puts "---------"

# create an array of restaurants and do CRUD actions
@res_array = [res1[:name]], [res2[:name]]

#add restaurant


res3 = {
  id: 3,
  name: "panda express",
  location: {
    city: "kaysville",
    state: "UT",
  },
  delivery: true,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 200,
  dishes: [
    { name: "bowl", price: 7.43, ingredients: ["chowmein, protien choice"] },
    { name: "2 entry platter", price: 9.25, ingredients: ["fried rice, 2 main choice"] },
  ],
  reviews: [
    { user_id: 1, rating: 5 },
    { user_id: 2, rating: 6 },
  ],
}

@res_array.push(res3 [:name])
print @res_array
puts 
puts
# delete from array
@res_array.delete_at(0)
print @res_array





res4 = {
  id: 4,
  name: "Texas Roadhouse",
  location: {
    city: "Layton",
    state: "UT",
  },
  delivery: false,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 700,
  dishes: [
    { name: "prime Rib", price: 25.00, ingredients: ["steak", "french fries"] },
    { name: "Ribs", price: 12.34, ingredients: ["pork", "french fries"] },
  ],
  reviews: [
    { user_id: 1, rating: 4 },
    { user_id: 2, rating: 5 },
  ],
}
puts
puts 
# update to array 
@res_array[1] = res4[:name]
print @res_array;
puts 
puts


#loop through restaurants and return with those with > than 500 likes
@res_likes_array = [res1, res2, res3, res4]
restaurant_likes = @res_likes_array.select do |likes|
  likes[:likes] > 500
end

puts restaurant_likes