class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
    #GET
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end

    get '/books' do 
      books = Book.all.order(:title).limit(10)
      books.to_json
    end

    get '/books/:id' do 
      book = Book.find(params[:id])
      book.to_json( include: { reviews: { include: :user}})
    end

    get '/reviews' do 
      reviews = Review.all
      reviews.to_json
    end 

    get '/reviews/best_score' do 
      best_score = Review.best_score
      best_score.to_json
    end

    #POST 
    post '/reviews' do 
      new_review = Review.create(
        score: params[:score],
        comment: params[:comment],
        book_id: params[:book_id]
      )
      new_review.to_json
    end 

    #PATCH 
    patch 'books/:id' do 
      update_book = Book.find(params[:id])
      update_book.update(
        title: params[:title],
        author: params[:author],
        genre: params[:genre],
        description: params[:description]
      )
      update_book.to_json
    end 
end
