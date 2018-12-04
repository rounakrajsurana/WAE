class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /requests
  # GET /requests.json
  def index
    if current_user.admin? || current_user.staff? 
      @requests = Request.all
    
    else
      @requests = Request.where("user_id=?",current_user.id)
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @comments = Comment.where(:request_id => @request.id)
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.user = current_user
    logger = Logger.new STDOUT 
    logger.info "Date"
    logger.info @request.Date
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_comment
    @comment = Comment.new(comment_params)
    @request = Request.find_by_id(params[:request_id])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @request, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :show }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    @request.user = current_user
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:location, :complain, :open, :closed, :cancelled, :Date, :nature)
    end

    def comment_params
      params.permit(:comment, :request_id)
    end
end
