class CollectionPagesController < ApplicationController
  
  before_filter :get_collection

  # GET /collection_pages
  # GET /collection_pages.json
  def index
    @collection_pages = @collection.collection_pages

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collection_pages }
    end
  end

  # GET /collection_pages/1
  # GET /collection_pages/1.json
  def show
    @collection_page = @collection.collection_pages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collection_page }
    end
  end

  # GET /collection_pages/new
  # GET /collection_pages/new.json
  def new
    @collection_page = @collection.collection_pages.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection_page }
    end
  end

  # GET /collection_pages/1/edit
  def edit
    @collection_page = @collection.collection_pages.find(params[:id])
  end

  # POST /collection_pages
  # POST /collection_pages.json
  def create
    @collection_page = @collection.collection_pages.build(params[:collection_page])

    respond_to do |format|
      if @collection_page.save
        format.html { redirect_to [@book_series, @collection, @collection_page], notice: 'CollectionPage was successfully created.' }
        format.json { render json: @collection_page, status: :created, location: @collection_page }
      else
        format.html { render action: "new" }
        format.json { render json: @collection_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collection_pages/1
  # PUT /collection_pages/1.json
  def update
    @collection_page = @collection.collection_pages.find(params[:id])

    respond_to do |format|
      if @collection_page.update_attributes(params[:collection_page])
        format.html { redirect_to [@book_series, @collection, @collection_page], notice: 'CollectionPage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_pages/1
  # DELETE /collection_pages/1.json
  def destroy
    @collection_page = @collection.collection_pages.find(params[:id])
    @collection_page.destroy

    respond_to do |format|
      format.html { redirect_to book_series.collection.collection_pages_url(@book_series, @collection) }
      format.json { head :no_content }
    end
  end

  # get_collection: converts the collection_id given by the routing to
  # a collection object @collection
  def get_collection
    @book_series = BookSeries.find(params[:book_series_id])
    @collection = @book_series.collections.find(params[:collection_id])
    @book_series_1 = BookSeries.first
  end

end
