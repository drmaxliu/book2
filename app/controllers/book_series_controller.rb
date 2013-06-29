class BookSeriesController < ApplicationController
  # GET /book_series
  # GET /book_series.json
  def index
    @book_series = BookSeries.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_series }
    end
  end

  # GET /book_series/1
  # GET /book_series/1.json
  def show
    @book_series = BookSeries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_series }
    end
  end

  # GET /book_series/new
  # GET /book_series/new.json
  def new
    @book_series = BookSeries.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_series }
    end
  end

  # GET /book_series/1/edit
  def edit
    @book_series = BookSeries.find(params[:id])
  end

  # POST /book_series
  # POST /book_series.json
  def create
    @book_series = BookSeries.new(params[:book_series])

    respond_to do |format|
      if @book_series.save
        format.html { redirect_to @book_series, notice: 'Book series was successfully created.' }
        format.json { render json: @book_series, status: :created, location: @book_series }
      else
        format.html { render action: "new" }
        format.json { render json: @book_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_series/1
  # PUT /book_series/1.json
  def update
    @book_series = BookSeries.find(params[:id])

    respond_to do |format|
      if @book_series.update_attributes(params[:book_series])
        format.html { redirect_to @book_series, notice: 'Book series was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_series/1
  # DELETE /book_series/1.json
  def destroy
    @book_series = BookSeries.find(params[:id])
    @book_series.destroy

    respond_to do |format|
      format.html { redirect_to book_series_index_url }
      format.json { head :no_content }
    end
  end
end
