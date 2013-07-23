class ReadingPlansController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_user

  # GET /reading_plans
  # GET /reading_plans.json
  def index
    @reading_plans = @user.reading_plans.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reading_plans }
    end
  end

  # GET /reading_plans/1
  # GET /reading_plans/1.json
  def show
    @reading_plan = @user.reading_plans.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reading_plan }
    end
  end

  # GET /reading_plans/new
  # GET /reading_plans/new.json
  def new
    @reading_plan = @user.reading_plans.build
    all_book_titles

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reading_plan }
    end
  end

  # GET /reading_plans/1/edit
  def edit
    @reading_plan = @user.reading_plans.find(params[:id])
    all_book_titles
  end

  # POST /reading_plans
  # POST /reading_plans.json
  def create
    @reading_plan = @user.reading_plans.build(params[:reading_plan])

    respond_to do |format|
      if @reading_plan.save
        format.html { redirect_to user_reading_plans_url(@user), notice: 'Reading plan was successfully created.' }
        format.json { render json: @reading_plan, status: :created, location: @reading_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @reading_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reading_plans/1
  # PUT /reading_plans/1.json
  def update
    @reading_plan = @user.reading_plans.find(params[:id])

    respond_to do |format|
      if @reading_plan.update_attributes(params[:reading_plan])
        format.html { redirect_to user_reading_plans_path(@user), notice: params[:reading_plan].to_s }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reading_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_plans/1
  # DELETE /reading_plans/1.json
  def destroy
    @reading_plan = @user.reading_plans.find(params[:id])
    @reading_plan.destroy

    respond_to do |format|
      format.html { redirect_to user_reading_plans_url(@user) }
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
        @book_names << [book.title, book.book_code]
      end
    end
  end

end
