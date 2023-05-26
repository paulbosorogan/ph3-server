class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    #GET
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end

    get '/books' do 
      books = Book.all
      books.to_json(
        include: :reviews
      )
    end

  
    #POST 
    post '/books' do 
      new_book = Book.create(
        title: params[:title],
        author: params[:author],
        genre: params[:genre],
        description: params[:description],
        image_url: params[:image_url]
      )
      new_book.to_json
    end 


    post '/reviews' do 
      new_review = Review.create(
        score: params[:score],
        comment: params[:comment],
      )
      new_review.to_json
    end 

    #PATCH 
    patch '/books/:id' do 
      update_book = Book.find(params[:id])
      update_book.update(
        title: params[:title],
        author: params[:author],
        genre: params[:genre],
        description: params[:description]
      )
      update_book.to_json
    end 


    #DELETE

    delete '/books' do 
      deleted_book.destroy
    end
end
#full crud on review
#destroy dependency (if deleting a book -> destroy reviews)