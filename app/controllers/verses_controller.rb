class VersesController < ApplicationController
  before_filter :get_chapter
  # :get_chapter is defined at the bottom of the file

  # GET /verses
  # GET /verses.json
  def index
    @verses = @chapter.verses

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @verses }
    end
  end

  # GET /verses/1
  # GET /verses/1.json
  def show
    @verse = @chapter.verses.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @verse }
    end
  end

  # GET /verses/new
  # GET /verses/new.json
  def new
    @verse = @chapter.verses.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @verse }
    end
  end

  # GET /verses/1/edit
  def edit
    @verse = @chapter.verses.find(params[:id])
  end

  # POST /verses
  # POST /verses.json
  def create
    @verse = @chapter.verses.build(params[:verse])

    respond_to do |format|
      if @verse.save
        format.html { redirect_to book_series_collection_book_chapter_verses_url(@book_series, @collection, @book, @chapter), notice: 'Verse was successfully created.' }
        format.json { render json: @verse, status: :created, location: @verse }
      else
        format.html { render action: "new" }
        format.json { render json: @verse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /verses/1
  # PUT /verses/1.json
  def update
    @verse = @chapter.verses.find(params[:id])

    respond_to do |format|
      if @verse.update_attributes(params[:verse])
        format.html { redirect_to book_series_collection_book_chapter_verses_url(@book_series, @collection, @book, @chapter), notice: 'Verse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @verse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verses/1
  # DELETE /verses/1.json
  def destroy
    @verse = @chapter.verses.find(params[:id])
    @verse.destroy

    respond_to do |format|
      format.html { redirect_to book_series_collection_book_chapter_verses_url(@book_series, @collection, @book, @chapter) }
      format.json { head :no_content }
    end
  end

  # get_verse: converts the chapter_id given by the routing to
  # a chapter object @chapter
  def get_chapter
    @book_series = BookSeries.find(params[:book_series_id])
    @collection = @book_series.collections.find(params[:collection_id])
    @book = @collection.books.find(params[:book_id])
    @chapter = @book.chapters.find(params[:chapter_id])
  end

end
