puts "🌱 Seeding spices..."

# Seed your database here
#dummy book covers 
book_covers = [
    "https://i.imgur.com/K7ySj95.jpg",
]


#make 50 books
10.times do 
    book =Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        image: book_covers.sample)
end 
puts "✅ Done seeding!"
