class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    #GET
    # get "/" do
    #   { message: "Good luck with your project!" }.to_json
    # end

    get '/books' do 
      books = Book.all
      books.to_json(
        include: :reviews
      )
    end

    get '/books/:id' do 
      individual_book = Book.find(params[:id])
      individual_book.to_json(
        include: :reviews
      )
    end

  
    #POST
    post '/books' do 
      new_book = Book.create(
        title: params[:title],
        author: params[:author],
        image: params[:image]
      )
      new_book.to_json(
        include: :reviews
      )
    end 


    patch "/reviews/:id" do 
      up_review = Review.find(params[:id])
      up_review.update(
        comment: params[:comment]
      )
    up_review.to_json
    end


    #DELETE

    delete '/books/:id' do 
      deleted_book = Book.find(params[:id])
      deleted_book.destroy
      deleted_book.to_json
    end
end
#full crud on review
#destroy dependency (if deleting a book -> destroy reviews)