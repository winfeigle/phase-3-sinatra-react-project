puts "🌱 Seeding spices..."

Restaurant.create(
    name: "Chipotle Mexican Grill", 
    address: "1600 California St Unit 7, Denver, CO 80202", 
    tag: "Mexican",
    logo_url: "https://www.chipotle.com/content/dam/poc/order/images/logos/cmg-medallion-logo.svg",
    image_url: "https://failurebeforesuccess.com/wp-content/uploads/2022/09/chipotle_storefront_1200x72.jpg",
    bio: "Chipotle was born on the belief that there is a connection between how food is raised and prepared, and how it tastes. Real is better.",
    subscribers: 248,
    )

Restaurant.create(
    name: "Modern Market Eatery", 
    address: "900 16th St Mall, Denver, CO 80202", 
    tag: "Healthy",
    logo_url: "https://images.squarespace-cdn.com/content/v1/5c7597a0e6666926bb5afe35/38999acd-39b0-48ba-99a8-923a1cf608df/2022-MRC-Logo-Circle_01.png",
    image_url: "https://images.squarespace-cdn.com/content/v1/62b34ce523ac06552240d02a/1656520590691-3U3UEUQ5B7ZT1DAIPE4W/Modern+Market+Eatery+2.jpg?format=1500w",
    bio: "At ModMarket we make our food, in house, from scratch and we partner with local purveyors to bring you the freshest products.",
    subscribers: 188,
    )

Restaurant.create(
    name: "Sweetgreen", 
    address: "1750 Wewatta St, Denver, CO 80202", 
    tag: "Bowls",
    logo_url: "https://yt3.ggpht.com/kX32AV9ChK-NyKDRd8f5Xzz6WkPejWVoOvndMyZywo_stWTjKfV6ye03VF487MLtFWPJKan62GU=s900-c-k-c0x00ffffff-no-rj",
    image_url: "https://cdn.vox-cdn.com/thumbor/h2A1furYlS-qWGUmJ8QDVfeZoCg=/0x0:2098x1430/1200x800/filters:focal(882x548:1216x882)/cdn.vox-cdn.com/uploads/chorus_image/image/58608261/sweetgreen_century_city_outside.0.png",
    bio: "We’re leading a movement to reimagine fast food for a new era. We believe in the healing power of food. Serving farm fresh bowls and salads.",
    subscribers: 312,
    )



# Create multiple MealPlan sizes for each restaurant
Restaurant.all.each do |restaurant|
    MealPlan.create(name: "Small", number_of_meals: 6, restaurant_id: restaurant.id, price: 72)
    MealPlan.create(name: "Medium", number_of_meals: 8, restaurant_id: restaurant.id, price: 88)
    MealPlan.create(name: "Large", number_of_meals: 12, restaurant_id: restaurant.id, price: 120)
end


# Create pre-populated restaurant requests
RestaurantRequest.create(name: "Birdcall", location: "Denver, CO")
RestaurantRequest.create(name: "Panera", location: "Denver, CO")
RestaurantRequest.create(name: "Snarf's Sandwiches", location: "Denver, CO")

puts "✅ Done seeding!"
