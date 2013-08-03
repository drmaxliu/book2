class ReadingNotesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_user

  # GET /reading_notes
  # GET /reading_notes.json
  def index
    @reading_notes = @user.reading_notes.paginate(page: params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reading_notes }
    end
  end

  # GET /reading_notes/1
  # GET /reading_notes/1.json
  def show
    @reading_note = @user.reading_notes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reading_note }
    end
  end

  # GET /reading_notes/new
  # GET /reading_notes/new.json
  def new
    @reading_note = @user.reading_notes.build
    all_book_titles

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reading_note }
    end
  end

  # GET /reading_notes/1/edit
  def edit
    @reading_note = @user.reading_notes.find(params[:id])
    all_book_titles
  end

  # POST /reading_notes
  # POST /reading_notes.json
  def create
    @reading_note = @user.reading_notes.build(params[:reading_note])

    respond_to do |format|
      if @reading_note.save
        format.html { redirect_to user_reading_notes_url(@user), notice: 'Reading plan was successfully created.' }
        format.json { render json: @reading_note, status: :created, location: @reading_note }
      else
        format.html { render action: "new" }
        format.json { render json: @reading_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reading_notes/1
  # PUT /reading_notes/1.json
  def update
    @reading_note = @user.reading_notes.find(params[:id])

    respond_to do |format|
      if @reading_note.update_attributes(params[:reading_note])
        format.html { redirect_to user_reading_notes_path(@user), notice: params[:reading_note].to_s }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reading_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_notes/1
  # DELETE /reading_notes/1.json
  def destroy
    @reading_note = @user.reading_notes.find(params[:id])
    @reading_note.destroy

    respond_to do |format|
      format.html { redirect_to user_reading_notes_url(@user) }
      format.json { head :no_content }
    end
  end

  # get_collection: converts the collection_id given by the routing to
  # a collection object @collection
  def get_user
    @user = User.find(params[:user_id])
  end

  def all_book_titles
    @series_one = BookSeries.find(1)
    @book_names = Array.new
    @series_one.collections.each do |collection|
      collection.books.each do |book|
        @book_names << book.title
      end
    end
  end

end
