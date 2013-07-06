class BooksController < ApplicationController
  
  before_filter :get_collection
  # :get_collection is defined at the bottom of the file


  # GET /books
  # GET /books.json
  def index
    @books = @collection.books
    #original: @books = Book.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = @collection.books.find(params[:id])
    #original: @book = Book.find(params[:id])

    respond_to do |format|
      format.html { redirect_to book_series_collection_book_chapters_url(@book_series, @collection, @book) }
      format.json { head :no_content }

#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    # @collection = Collection.find(params[:collection_id])
    @book = @collection.books.build
    #original: @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = @collection.books.find(params[:id])
    #original: @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = @collection.books.build(params[:book])
    #original: @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to book_series_collection_books_url(@book_series, @collection), notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = @collection.books.find(params[:id])
    #original: @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to book_series_collection_books_url(@book_series, @collection), notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = @collection.books.find(params[:id])
    #original: @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to book_series_collection_books_path(@book_series, @collection) }
      format.json { head :no_content }
    end
  end

  private

  # get_collection: converts the collection_id given by the routing to
  # a collection object @collection
  def get_collection
    @book_series = BookSeries.find(params[:book_series_id])
    @collection = @book_series.collections.find(params[:collection_id])
    @book_series_1 = BookSeries.first
  end

end
