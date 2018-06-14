class BookController < ApplicationController
 
   def index
        @books= Book.all
    end
    
    def show
        @book = Book.find_by_id(params[:id])
    end
    
    def new
    end
    
    def create
        t = Book.new
        t.name = params['name']
        t.email = params['email']
        t.book_title = params['book_title']
        t.days_needed = params['days_needed']
        t.intrested_response = params['intrested_response']
        t.save
        redirect_to "/book/show/#{ t.id }"
    end
    
    def edit
        @book = Book.find_by_id(params[:id])
     
    end
    
    def update
        t = Book.find_by_id(params['id'])
           t.name = params['name']
        t.email = params['email']
        t.book_title = params['book_title']
        t.days_needed = params['days_needed']
        t.intrested_response = params['intrested_response']
        t.save
        redirect_to "/book/show/#{t.id}"
    end
    
    def destroy
        t = Book.find_by_id(params[:id])
        t.destroy
        redirect_to "/"
    end


end
