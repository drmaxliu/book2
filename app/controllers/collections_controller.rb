class CollectionsController < ApplicationController
  
  before_filter :get_book_series
  # :get_book_series is defined at the bottom of the file

  # GET /collections
  # GET /collections.json
  def index
    @collections = @book_series.collections

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collections }
    end
  end

  # GET /collections/1
  # GET /collections/1.json
  def show
    @collection = @book_series.collections.find(params[:id])
    respond_to do |format|
      format.html { redirect_to book_series_collection_books_url(@book_series, @collection) }
      format.json { head :no_content }

    # respond_to do |format|
    #  format.html # show.html.erb
    #  format.json { render json: @collection }
    end
  end

  # GET /collections/new
  # GET /collections/new.json
  def new
    @collection = @book_series.collections.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection }
    end
  end

  # GET /collections/1/edit
  def edit
    @collection = @book_series.collections.find(params[:id])
  end

  # POST /collections
  # POST /collections.json
  def create
    @collection = @book_series.collections.build(params[:collection])

    respond_to do |format|
      if @collection.save
        format.html { redirect_to book_series_collections_url(@book_series), notice: 'Collection was successfully created.' }
        format.json { render json: @collection, status: :created, location: @collection }
      else
        format.html { render action: "new" }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collections/1
  # PUT /collections/1.json
  def update
    @collection = @book_seris.collections.build(params[:collection])

    respond_to do |format|
      if @collection.update_attributes(params[:collection])
        format.html { redirect_to book_series_collections_url(@book_series), notice: 'Collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collections/1
  # DELETE /collections/1.json
  def destroy
    @collection = @book_series.collections.find(params[:id])
    @collection.destroy

    respond_to do |format|
      format.html { redirect_to book_series_collections_url(@book_series) }
      format.json { head :no_content }
    end
  end

  # get_book_series converts the book_series_id given by the routing to
  # a book_series object @book_series
  def get_book_series
    @book_series = BookSeries.find(params[:book_series_id])
    @book_series_1 = BookSeries.first
  end
end
