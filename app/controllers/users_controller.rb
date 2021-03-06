class UsersController < ApplicationController
  
  def resume_reading
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_series }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user =  current_user
    @reading_notes = @user.reading_notes.paginate(page: params[:page], :per_page => 2)

    respond_to do |format|
      format.html # show.html.erb
      format.json { head :no_content }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /book_series/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    respond_to do |format|
      if user_signed_in?
        if current_user.update_attributes(params[:user])
          format.html { redirect_to current_user, notice: 'User was successfully updated.' }
          format.json { head :no_content }
        end
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = current_user
    @user.destroy

    respond_to do |format|
      format.html { redirect_to user_index_url }
      format.json { head :no_content }
    end
  end

  # Check if following any lead readers
  def following?(other_user)
    relationships.find_by(read_leader_id: other_user.id)
  end

  # To follow a read leader
  def follow(other_user)
    relationships.create(lead_reader_id: other_user.id)
  end

  # To drop folloing a read leader
  def unfollow(other_user)
    relationships.find_by(lead_reader_id: other_user.id).destroy
  end

end
