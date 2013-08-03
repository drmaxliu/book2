class CriticsController < ApplicationController
  # GET /critics
  # GET /critics.json
  def index
    @critics = Critic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @critics }
    end
  end

  # GET /critics/1
  # GET /critics/1.json
  def show
    @critic = Critic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @critic }
    end
  end

  # GET /critics/new
  # GET /critics/new.json
  def new
    @critic = Critic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @critic }
    end
  end

  # GET /critics/1/edit
  def edit
    @critic = Critic.find(params[:id])
  end

  # POST /critics
  # POST /critics.json
  def create
    @critic = Critic.new(params[:critic])

    respond_to do |format|
      if @critic.save
        format.html { redirect_to @critic, notice: 'Critic was successfully created.' }
        format.json { render json: @critic, status: :created, location: @critic }
      else
        format.html { render action: "new" }
        format.json { render json: @critic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /critics/1
  # PUT /critics/1.json
  def update
    @critic = Critic.find(params[:id])

    respond_to do |format|
      if @critic.update_attributes(params[:critic])
        format.html { redirect_to @critic, notice: 'Critic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @critic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /critics/1
  # DELETE /critics/1.json
  def destroy
    @critic = Critic.find(params[:id])
    @critic.destroy

    respond_to do |format|
      format.html { redirect_to critics_url }
      format.json { head :no_content }
    end
  end
end
