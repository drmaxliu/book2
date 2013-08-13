class LightsController < ApplicationController

  # GET /lights
  # GET /lights.json
  def index
    @chapter = Chapter.find(params[:chapter_id])
    @lights = @chapter.lights.paginate(page: params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lights }
    end
  end

  # GET /lights/1
  # GET /lights/1.json
  def show
    @chapter = Chapter.find(params[:chapter_id])
    @light = @chapter.lights.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @light }
    end
  end

  # GET /lights/new
  # GET /lights/new.json
  def new
    if user_signed_in?
      @light = @chapter.lights.build
      all_book_titles

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @light }
      end
    else
      respond_to do |format|
        format.html { redirect_to 'lights_controller#index' }
        format.json { render json: @lights }
      end
    end

  end

  # GET /lights/1/edit
  def edit
    if user_signed_in?
      @chapter = Chapter.find(params[:chapter_id])
      @light = @chapter.lights.find(params[:id])
      if current_user.id == @light.user_id
        all_book_titles
      else
        redirect_to 'lights_controller#index' 
      end
    else
      redirect_to 'lights_controller#index'
    end
  end

  # POST /lights
  # POST /lights.json
  def create
    if user_signed_in?
      @chapter = Chapter.find(params[:chapter_id])
      @book = Book.find(@chapter.book_id)
      @collection = Collection.find(@book.collection_id)
      @book_series = Chapter.find(@collection.book_series_id)

      @light = @chapter.lights.create(params[:light])

      respond_to do |format|
        if @light.save
          format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter), 
            notice: 'A new sharing was successfully posted.' }
          format.json { render json: @light, status: :created, location: @light }
        else
          format.html { render action: "new" }
          format.json { render json: @light.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to 'lights_controller#index' }
        format.json { render json: @lights }
      end
    end
    
  end

  # PUT /lights/1
  # PUT /lights/1.json
  def update
    if user_signed_in?
      update_params = params[:light]
      @chapter = Chapter.find(params[:chapter_id])
      @light = @chapter.lights.find(params[:id])

      for_giving_praise = update_params["voted"]

      # a user giving a praise comment
      if for_giving_praise != nil 
        commenting_user = update_params["user_id"]
        msg = "ttt ... " + @light.comments.count.to_s
        
        if @light.comments.where(:user_id => commenting_user, :voted => true)
          if @light.praise_count == nil 
            @light.praise_count = 0
          end
          new_count = @light.praise_count + 1
          @light.update_attributes(:praise_count => new_count)
          @comment = @light.comments.create(:user_id => commenting_user, :voted => true, :note => "Good!")
          msg = "count of comments of light: " + @light.comments.count.to_s + ", count of praises: " + new_count.to_s
        end
        @book = Book.find(@chapter.book_id)
        @collection = Collection.find(@book.collection_id)
        @book_series = BookSeries.find(@collection.book_series.id)
        respond_to do |format|
          format.html { redirect_to book_series_collection_book_chapters_path(@book_series, @collection, @book), 
            notice: msg}
          format.json { head :no_content }
        end
      # regular update for light
      elsif current_user.id == @light.user_id 
        respond_to do |format|
          if @light.update_attributes(params[:light])
            @book = Book.find(@chapter.book_id)
            @collection = Collection.find(@book.collection_id)
            @book_series = BookSeries.find(@collection.book_series.id)
            format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter), 
              notice: params[:light].to_s }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @light.errors, status: :unprocessable_entity }
          end
        end
      else
        respond_to do |format|
          format.html { redirect_to 'lights_controller#index' }
          format.json { render json: @lights }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to 'lights_controller#index' }
        format.json { render json: @lights }
      end
    end
  end

  # DELETE /lights/1
  # DELETE /lights/1.json
  def destroy
    if user_signed_in?
      @light = @chapter.lights.find(params[:id])
      if current_user.id == @light.user_id
        @light.destroy
        respond_to do |format|
          format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter) }
          format.json { head :no_content }
        end
      else
        respond_to do |format|
          format.html { redirect_to 'lights_controller#index' }
          format.json { render json: @lights }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to 'lights_controller#index' }
        format.json { render json: @lights }
      end
    end
  end

  # get_collection: converts the collection_id given by the routing to
  # a collection object @collection

  def all_book_titles
    @series_one = BookSeries.find(1)
    @book_names = {}
    @series_one.collections.each do |collection|
      collection.books.each do |book|
        @book_names[book.title] = book.book_code
      end
    end
  end

end
