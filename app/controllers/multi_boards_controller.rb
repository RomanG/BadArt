class MultiBoardsController < ApplicationController
  # GET /multi_boards
  # GET /multi_boards.json
  def index
    @multi_boards = MultiBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @multi_boards }
    end
  end

  # GET /multi_boards/1
  # GET /multi_boards/1.json
  def show
    @multi_board = MultiBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @multi_board }
    end
  end

  # GET /multi_boards/new
  # GET /multi_boards/new.json
  def new
    @multi_board = MultiBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @multi_board }
    end
  end

  # GET /multi_boards/1/edit
  def edit
    @multi_board = MultiBoard.find(params[:id])
  end

  # POST /multi_boards
  # POST /multi_boards.json
  def create
    @multi_board = MultiBoard.new(params[:multi_board])

    respond_to do |format|
      if @multi_board.save
        format.html { redirect_to @multi_board, notice: 'Multi board was successfully created.' }
        format.json { render json: @multi_board, status: :created, location: @multi_board }
      else
        format.html { render action: "new" }
        format.json { render json: @multi_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /multi_boards/1
  # PUT /multi_boards/1.json
  def update
    @multi_board = MultiBoard.find(params[:id])

    respond_to do |format|
      if @multi_board.update_attributes(params[:multi_board])
        format.html { redirect_to @multi_board, notice: 'Multi board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @multi_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multi_boards/1
  # DELETE /multi_boards/1.json
  def destroy
    @multi_board = MultiBoard.find(params[:id])
    @multi_board.destroy

    respond_to do |format|
      format.html { redirect_to multi_boards_url }
      format.json { head :no_content }
    end
  end
end
