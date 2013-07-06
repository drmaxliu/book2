class ChaptersController < ApplicationController
  
  before_filter :get_book
  # :get_book is defined at the bottom of the file

  # GET /chapters
  # GET /chapters.json
  def index
    @chapters = @book.chapters

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chapters }
    end
  end

  # GET /chapters/1
  # GET /chapters/1.json
  def show
    @chapter = @book.chapters.find(params[:id])
    # @chapter = Chapter.find(params[:id])

    respond_to do |format|
      format.html { redirect_to book_series_collection_book_chapter_verses_url(@book_series, @collection, @book, @chapter) }
      format.json { head :no_content }

    # respond_to do |format|
    #  format.html # show.html.erb
    #  format.json { render json: @chapter }
    end
  end

  # GET /chapters/new
  # GET /chapters/new.json
  def new
    @chapter = @book.chapters.build
    # @chapter = Chapter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chapter }
    end
  end

  # GET /chapters/1/edit
  def edit
    @chapter = @book.chapters.find(params[:id])
    # @chapter = Chapter.find(params[:id])
  end

  # POST /chapters
  # POST /chapters.json
  def create
    @chapter = @book.chapters.build(params[:chapter])

    respond_to do |format|
      if @chapter.save
        format.html { redirect_to book_series_collection_book_chapters_url(@book_series, @collection, @book), notice: 'Chapter was successfully created.' }
        format.json { render json: @chapter, status: :created, location: @chapter }
      else
        format.html { render action: "new" }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chapters/1
  # PUT /chapters/1.json
  def update
    @chapter = @book.chapters.find(params[:id])
    # @chapter = Chapter.find(params[:id])

    respond_to do |format|
      if @chapter.update_attributes(params[:chapter])
        format.html { redirect_to book_series_collection_book_chapters_url(@book_series, @collection, @book), notice: 'Chapter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter = @book.chapters.find(params[:id])
    # @chapter = Chapter.find(params[:id])
    @chapter.destroy

    respond_to do |format|
      format.html { redirect_to book_series_collection_book_chapters_url(@book_series, @collection, @book) }
      format.json { head :no_content }
    end
  end

  # get_book: converts the book_id given by the routing to
  # a book object @book
  def get_book
    @book_series = BookSeries.find(params[:book_series_id])
    @book_series_1 = BookSeries.first
    @collection = @book_series.collections.find(params[:collection_id])
    @book = @collection.books.find(params[:book_id])
  end

end
