class RoomCategoriesController < ApplicationController
  # GET /room_categories
  # GET /room_categories.json
  def index
    @room_categories = RoomCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @room_categories }
    end
  end

  # GET /room_categories/1
  # GET /room_categories/1.json
  def show
    @room_category = RoomCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room_category }
    end
  end

  # GET /room_categories/new
  # GET /room_categories/new.json
  def new
    @room_category = RoomCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room_category }
    end
  end

  # GET /room_categories/1/edit
  def edit
    @room_category = RoomCategory.find(params[:id])
  end

  # POST /room_categories
  # POST /room_categories.json
  def create
    @room_category = RoomCategory.new(params[:room_category])

    respond_to do |format|
      if @room_category.save
        format.html { redirect_to @room_category, notice: 'Room category was successfully created.' }
        format.json { render json: @room_category, status: :created, location: @room_category }
      else
        format.html { render action: "new" }
        format.json { render json: @room_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /room_categories/1
  # PUT /room_categories/1.json
  def update
    @room_category = RoomCategory.find(params[:id])

    respond_to do |format|
      if @room_category.update_attributes(params[:room_category])
        format.html { redirect_to @room_category, notice: 'Room category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_categories/1
  # DELETE /room_categories/1.json
  def destroy
    @room_category = RoomCategory.find(params[:id])
    @room_category.destroy

    respond_to do |format|
      format.html { redirect_to room_categories_url }
      format.json { head :no_content }
    end
  end
end
