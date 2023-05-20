puts "🌱 Seeding spices..."

# Seed your database here
#dummy book covers 
book_covers = [
    "https://i.imgur.com/jtnrnfJ.jpg",
    "https://i.imgur.com/nqWeXPp.jpg",
    "https://i.imgur.com/LrhWgUx.jpg",
    "https://i.imgur.com/PV4lEKr.jpg",
    "https://i.imgur.com/BGfqRiK.jpg"
]

#make 10 users
10.times do 
    User.create(name: Faker::Name.name)
end

#make 50 books
50.times do 
    book =Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre, 
        description: Faker::Lorem.sentence, 
        image_url: book_covers.sample)

        #create random reviews
        rand(1..3).times do 
            user = User.order('RANDOM()').first

            Review.create(
                score: rand(1..10),
                comment: Faker::Lorem.sentence,
                book_id: book.id,
                user_id: user.id
            )
    end
end 
puts "✅ Done seeding!"
