class LeadReadersController < ApplicationController
  # GET /lead_readers
  # GET /lead_readers.json
  def index
    @lead_readers = LeadReader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lead_readers }
    end
  end

  # GET /lead_readers/1
  # GET /lead_readers/1.json
  def show
    @lead_reader = LeadReader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead_reader }
    end
  end

  # GET /lead_readers/new
  # GET /lead_readers/new.json
  def new
    @lead_reader = LeadReader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead_reader }
    end
  end

  # GET /lead_readers/1/edit
  def edit
    @lead_reader = LeadReader.find(params[:id])
  end

  # POST /lead_readers
  # POST /lead_readers.json
  def create
    @lead_reader = LeadReader.new(params[:lead_reader])

    respond_to do |format|
      if @lead_reader.save
        format.html { redirect_to @lead_reader, notice: 'Lead reader was successfully created.' }
        format.json { render json: @lead_reader, status: :created, location: @lead_reader }
      else
        format.html { render action: "new" }
        format.json { render json: @lead_reader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lead_readers/1
  # PUT /lead_readers/1.json
  def update
    @lead_reader = LeadReader.find(params[:id])

    respond_to do |format|
      if @lead_reader.update_attributes(params[:lead_reader])
        format.html { redirect_to @lead_reader, notice: 'Lead reader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead_reader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_readers/1
  # DELETE /lead_readers/1.json
  def destroy
    @lead_reader = LeadReader.find(params[:id])
    @lead_reader.destroy

    respond_to do |format|
      format.html { redirect_to lead_readers_url }
      format.json { head :no_content }
    end
  end
end
