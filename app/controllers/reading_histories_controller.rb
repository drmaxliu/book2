class ReadingHistoriesController < ApplicationController
  before_filter :authenticate_user!

  # GET /reading_histories
  # GET /reading_histories.json
  def index
    @reading_histories = current_user.reading_histories.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reading_histories }
    end
  end

  # GET /reading_histories/1
  # GET /reading_histories/1.json
  def show
    @reading_history = @user.reading_histories.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reading_history }
    end
  end

  # GET /reading_histories/new
  # GET /reading_histories/new.json
  def new
    @reading_history = current_user.reading_history.build(params[:reading_history])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reading_history }
    end
  end

  # GET /reading_histories/1/edit
  def edit
    @reading_history = @user.reading_histories.find(params[:id])
    all_book_titles
  end

  # POST /reading_histories
  # POST /reading_histories.json
  # Usage: save the new reading_history after "new"
  def create
    @reading_history = @user.reading_histories.build(params[:reading_history])

    respond_to do |format|
      if @reading_history.save
        format.html { redirect_to '/', notice: 'new reading history was successfully added.' }
        format.json { render json: @reading_history, status: :created, location: @reading_history }
      else
        format.html { render action: "new" }
        format.json { render json: @reading_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reading_histories/1
  # PUT /reading_histories/1.json
  # save a new reading history here ...
  # once done, back to the reading page
  def update
    @reading_history = current_user.reading_histories.find(params[:id])

    respond_to do |format|
      if @reading_history.update_attributes(params[:reading_history])
        data_new = params[:reading_history]
        format.html { redirect_to data_new["html_path"], notice: data_new.to_s }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reading_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_histories/1
  # DELETE /reading_histories/1.json
  def destroy
    @reading_history = current_user.reading_histories.find(params[:id])
    @reading_history.destroy

    respond_to do |format|
      format.html { redirect_to user_reading_histories_url(current_user) }
      format.json { head :no_content }
    end
  end

end
