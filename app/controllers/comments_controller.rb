class CommentsController < ApplicationController


  def create
    if user_signed_in?

      @light = Light.find(params[:light_id])
      @chapter = Chapter.find(params[:chapter_id])
      @book = Book.find(params[:book_id])
      @collection = Collection.find(params[:collection_id])
      @book_series = Chapter.find(params[:book_series_id])

      @comment = @light.comments.build(params[:comment])

      respond_to do |format|
        if @comment.save
          # @light = Light.find(@comment.light_id)
          # @chapter = Chapter.find(@light.taggable_id)
          # @book = Book.find(@chapter.book_id)
          # @collection = Collection.find(@book.collection_id)
          # @book_series = BookSeries.find(@collection.book_series.id)
          if @comment.voted 
            @light.praise_count += 1
          end

          format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter), 
            notice: 'A new feedback was successfully added.' }
          format.json { render json: @comment, status: :created, location: @comment }
        else
          format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter), 
            notice: 'Failed to add a new comment!' }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to book_series_collection_book_chapter_path(@book_series, @collection, @book, @chapter), 
            notice: 'Failed to add a new comment!'}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

end
