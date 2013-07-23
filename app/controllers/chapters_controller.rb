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
        # to avoid a repetitive count for the page read
        jj = @chapter.stat_read-1
        if @chapter.stat_read >0 then @chapter.update_attributes(:stat_read => jj)
        end

        # check if to update the user reading plan progress
        update_params = params[:chapter]
        notice_msg = "Stats Updates: "

        if user_signed_in? && update_params["stat_finish"] != nil then
          @reading_plan = current_user.reading_plans.find_by_book_code(@book.book_code)
          if @reading_plan != nil then
            check_record
            if @read_hash[@chapter.chapter_no.to_s] == nil then
              # no exsiting chapter read record
              # encode a new record to the reading record in the reading plan
              current_time = Time.new
              dd = Date.new(current_time.year, current_time.month, current_time.day)
              if @read_hash.count == 0 then
                new_read_record = @chapter.chapter_no.to_s + "/" + dd.to_s
              else
                new_read_record = @reading_plan.read_record + "PP" + @chapter.chapter_no.to_s + "/" + dd.to_s
              end
              @reading_plan.update_attributes(:read_record => new_read_record)
              notice_msg = notice_msg + "Record of finishing reading on " + dd.to_s + " is added!"
            else
              notice_msg = notice_msg + "This chapter has been read on " + @read_hash[@chapter.chapter_no.to_s] 
              nn = @chapter.stat_finish - 1
              @chapter.update_attributes(:stat_finish => nn)
            end
          end
        else notice_msg = notice_msg + update_params.to_s

        end
        
        format.html { redirect_to book_series_collection_book_chapters_url(@book_series, @collection, @book), 
          notice: notice_msg.html_safe }

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

  # convert the book reading record to hash for checking
  def check_record
    @reading_plan = current_user.reading_plans.find_by_book_code(@book.book_code)
    read_item = @reading_plan.read_record.split("PP")
    @read_hash = {}
    read_item.each do |item|
      item_pair = item.split("/")
      @read_hash[item_pair.first] = item_pair.last
    end
  end

end
