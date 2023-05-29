puts "🌱 Seeding spices..."

# Seed your database here
#dummy book covers 
book_covers = [
    "https://i.imgur.com/XokuxGV.jpg",
    "https://i.imgur.com/7iRhvgP.jpg",
]


#make 50 books
10.times do 
    book =Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        image: book_covers.sample)

        #create random reviews
        1.times do 
            Review.create(
                comment: Faker::Lorem.sentence,
                book_id: book.id,
            )
    end
end 
puts "✅ Done seeding!"
