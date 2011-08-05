class JackrabbitsController < ApplicationController
  # GET /jackrabbits
  # GET /jackrabbits.json
  def index
    @jackrabbits = Jackrabbit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jackrabbits }
    end
  end

  # GET /jackrabbits/1
  # GET /jackrabbits/1.json
  def show
    @jackrabbit = Jackrabbit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jackrabbit }
    end
  end

  # GET /jackrabbits/new
  # GET /jackrabbits/new.json
  def new
    @jackrabbit = Jackrabbit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jackrabbit }
    end
  end

  # GET /jackrabbits/1/edit
  def edit
    @jackrabbit = Jackrabbit.find(params[:id])
  end

  # POST /jackrabbits
  # POST /jackrabbits.json
  def create
    @jackrabbit = Jackrabbit.new(params[:jackrabbit])

    respond_to do |format|
      if @jackrabbit.save
        format.html { redirect_to @jackrabbit, notice: 'Jackrabbit was successfully created.' }
        format.json { render json: @jackrabbit, status: :created, location: @jackrabbit }
      else
        format.html { render action: "new" }
        format.json { render json: @jackrabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jackrabbits/1
  # PUT /jackrabbits/1.json
  def update
    @jackrabbit = Jackrabbit.find(params[:id])

    respond_to do |format|
      if @jackrabbit.update_attributes(params[:jackrabbit])
        format.html { redirect_to @jackrabbit, notice: 'Jackrabbit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @jackrabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jackrabbits/1
  # DELETE /jackrabbits/1.json
  def destroy
    @jackrabbit = Jackrabbit.find(params[:id])
    @jackrabbit.destroy

    respond_to do |format|
      format.html { redirect_to jackrabbits_url }
      format.json { head :ok }
    end
  end
end
