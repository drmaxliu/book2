class BookPagesController < ApplicationController
  # GET /book_pages
  # GET /book_pages.json
  def index
    @book_pages = BookPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_pages }
    end
  end

  # GET /book_pages/1
  # GET /book_pages/1.json
  def show
    @book_page = BookPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_page }
    end
  end

  # GET /book_pages/new
  # GET /book_pages/new.json
  def new
    @book_page = BookPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_page }
    end
  end

  # GET /book_pages/1/edit
  def edit
    @book_page = BookPage.find(params[:id])
  end

  # POST /book_pages
  # POST /book_pages.json
  def create
    @book_page = BookPage.new(params[:book_page])

    respond_to do |format|
      if @book_page.save
        format.html { redirect_to @book_page, notice: 'Book page was successfully created.' }
        format.json { render json: @book_page, status: :created, location: @book_page }
      else
        format.html { render action: "new" }
        format.json { render json: @book_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_pages/1
  # PUT /book_pages/1.json
  def update
    @book_page = BookPage.find(params[:id])

    respond_to do |format|
      if @book_page.update_attributes(params[:book_page])
        format.html { redirect_to @book_page, notice: 'Book page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_pages/1
  # DELETE /book_pages/1.json
  def destroy
    @book_page = BookPage.find(params[:id])
    @book_page.destroy

    respond_to do |format|
      format.html { redirect_to book_pages_url }
      format.json { head :no_content }
    end
  end
end
