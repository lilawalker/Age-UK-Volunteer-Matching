# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ id: 10000, email: 'test@gmail.com', password: 'potato', volunteer: true, name: 'Greg', telephone: "01235823674", location: 'Highcliff', bio: 'I really enjoy long walks in the park and baking on Sundays.' },
                    { id: 10001, email: 'mark@example.com', password: 'markmark', volunteer: false, name: 'Mark', telephone: "01865478293", location: 'Wales', bio: 'I like to look over the hills and smell the fresh sea breeze.' }])

Interest.new(id: 20000, name: 'sports').save(validate: false)
Interest.new(id: 20001, name: 'reading').save(validate: false)
Interest.new(id: 20002, name: 'baking').save(validate: false)
Interest.new(id: 20003, name: 'gardening').save(validate: false)

Userinterest.new(user_id: 10000, interest_id: 20001).save(validate: false)
Userinterest.new(user_id: 10001, interest_id: 20002).save(validate: false)

# Interest.create!(id: 2000, name: 'sports')
# interests = Interest.create([{ name: 'sports' }, { name: 'baking' }, { name: 'reading' }, { name: 'walking' }, { name: 'story telling' }, { name: 'gardening' }, { name: 'crocheting' }])

# interests_users = Interest_User.create([{ type: 'sports' }, { type: 'baking' }, { type: 'reading' }, { type: 'walking' }, { type: 'story telling' }, { type: 'gardening' }, { type: 'crocheting' }])

puts "Seeds have been set and you're ready to go!"