puts "🌱 Seeding spices..."

# Seed your database here
#dummy book covers 
book_covers = [
    "https://i.imgur.com/XokuxGV.jpg",
    "https://i.imgur.com/7iRhvgP.jpg",
    "https://i.imgur.com/z4DOmOK.jpg"
]


#make 50 books
10.times do 
    book =Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre, 
        description: Faker::Lorem.sentence, 
        image_url: book_covers.sample)

        #create random reviews
        1.times do 
            Review.create(
                score: rand(1..10),
                comment: Faker::Lorem.sentence,
                book_id: book.id,
            )
    end
end 
puts "✅ Done seeding!"
