# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ id: 10000, email: 'greg@example.com', password: 'password123', volunteer: true, name: 'Greg', telephone: "01235823674", location: 'BH1 1AJ', bio: 'Hi I am Greg and I am looking to help in anyway I can. Hope to hear from you soon.' },
                    { id: 10001, email: 'anne@example.com', password: 'password123', volunteer: true, name: 'Anne', telephone: "01865478293", location: 'OX14 4DE', bio: 'Hey, Anne here. ready to help you in anyway you need. The world is better together.' },
                    { id: 10002, email: 'mark@example.com', password: 'password123', volunteer: false, name: 'Mark', telephone: "07728034562", location: 'CF14 3PE', bio: "Hi. I am Mark. I always love an evening walk to the waterside!" },
                    { id: 10003, email: 'louise@example.com', password: 'password123', volunteer: false, name: 'Louise', telephone: "07832106633", location: 'SW11 5GQ', bio: 'Hi I am Louise, looking for someone to enjoy a nice evening conversation with.' }])

Interest.new(id: 20000, name: 'sports').save(validate: false)
Interest.new(id: 20001, name: 'reading').save(validate: false)
Interest.new(id: 20002, name: 'baking').save(validate: false)
Interest.new(id: 20003, name: 'gardening').save(validate: false)
Interest.new(id: 20004, name: 'dancing').save(validate: false)
Interest.new(id: 20005, name: 'music').save(validate: false)
Interest.new(id: 20006, name: 'languages').save(validate: false)
Interest.new(id: 20007, name: 'fishing').save(validate: false)
Interest.new(id: 20008, name: 'walking').save(validate: false)

# Volunteer interests
Userinterest.new(user_id: 10000, interest_id: 20001).save(validate: false)
Userinterest.new(user_id: 10000, interest_id: 20002).save(validate: false)
Userinterest.new(user_id: 10000, interest_id: 20003).save(validate: false)
Userinterest.new(user_id: 10000, interest_id: 20004).save(validate: false)
Userinterest.new(user_id: 10001, interest_id: 20005).save(validate: false)
Userinterest.new(user_id: 10001, interest_id: 20006).save(validate: false)
Userinterest.new(user_id: 10001, interest_id: 20007).save(validate: false)
Userinterest.new(user_id: 10001, interest_id: 20008).save(validate: false)

# Age UK members
Userinterest.new(user_id: 10002, interest_id: 20001).save(validate: false)
Userinterest.new(user_id: 10002, interest_id: 20004).save(validate: false)
Userinterest.new(user_id: 10002, interest_id: 20007).save(validate: false)
Userinterest.new(user_id: 10002, interest_id: 20008).save(validate: false)
Userinterest.new(user_id: 10003, interest_id: 20002).save(validate: false)
Userinterest.new(user_id: 10003, interest_id: 20003).save(validate: false)
Userinterest.new(user_id: 10003, interest_id: 20005).save(validate: false)
Userinterest.new(user_id: 10003, interest_id: 20006).save(validate: false)

puts "Seeds have been set and you're ready to go!"