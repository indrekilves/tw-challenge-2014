class RecieverIndicesController < ApplicationController
  # GET /reciever_indices
  # GET /reciever_indices.json
  def index
    @reciever_indices = RecieverIndex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reciever_indices }
    end
  end

  # GET /reciever_indices/1
  # GET /reciever_indices/1.json
  def show
    @reciever_index = RecieverIndex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reciever_index }
    end
  end

  # GET /reciever_indices/new
  # GET /reciever_indices/new.json
  def new
    @reciever_index = RecieverIndex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reciever_index }
    end
  end

  # GET /reciever_indices/1/edit
  def edit
    @reciever_index = RecieverIndex.find(params[:id])
  end

  # POST /reciever_indices
  # POST /reciever_indices.json
  def create
    @reciever_index = RecieverIndex.new(params[:reciever_index])

    respond_to do |format|
      if @reciever_index.save
        format.html { redirect_to @reciever_index, notice: 'Reciever index was successfully created.' }
        format.json { render json: @reciever_index, status: :created, location: @reciever_index }
      else
        format.html { render action: "new" }
        format.json { render json: @reciever_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reciever_indices/1
  # PUT /reciever_indices/1.json
  def update
    @reciever_index = RecieverIndex.find(params[:id])

    respond_to do |format|
      if @reciever_index.update_attributes(params[:reciever_index])
        format.html { redirect_to @reciever_index, notice: 'Reciever index was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reciever_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reciever_indices/1
  # DELETE /reciever_indices/1.json
  def destroy
    @reciever_index = RecieverIndex.find(params[:id])
    @reciever_index.destroy

    respond_to do |format|
      format.html { redirect_to reciever_indices_url }
      format.json { head :no_content }
    end
  end
end
