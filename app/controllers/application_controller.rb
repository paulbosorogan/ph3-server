class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    #GET
    # get "/" do
    #   { message: "Good luck with your project!" }.to_json
    # end

    get '/books' do 
      books = Book.all
      books.to_json(
        include: :notes
      )
    end

  
    #POST
    post '/books' do 
      new_book = Book.create(
        title: params[:title],
        author: params[:author],
        image: params[:image],
        genre: params[:genre],
      )
      new_book.to_json(
        include: :notes
      )
    end 

    post '/books/:book_id/notes' do 
      new_note = Note.create(
        comment: params[:comment],
        book: Book.find(params[:book_id])
      )
      new_note.to_json
    end


    patch "/notes/:id" do 
      update_note = Note.find(params[:id])
      update_note.update(
        comment: params[:comment]
      )
    update_note.to_json
    end


    #DELETE

    delete '/books/:id' do 
      deleted_book = Book.find(params[:id])
      deleted_book.destroy
      deleted_book.to_json
    end

    delete '/notes/:id' do 
      deleted_note = Note.find(params[:id])
      deleted_note.destroy
      deleted_note.to_json
    end
end
#full crud on review
#destroy dependency (if deleting a book -> destroy reviews)