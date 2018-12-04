class QuotationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_quotation, only: [:show, :update, :destroy]

  load_and_authorize_resource

  # GET /quotations
  def index
    query = params[:q]
    @quotations = query ? Quotation.search(query) : Quotation.all

    render json: @quotations
  end

  # GET /quotations/1
  def show
    render json: @quotation
  end

  # POST /quotations
  def create
    @quotation = Quotation.new(quotation_params)
    @quotation.user = current_user

    if @quotation.save
      render json: @quotation, status: :created, location: @quotation
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotations/1
  def update
    if @quotation.update(quotation_params)
      render json: @quotation
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotations/1
  def destroy
    @quotation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quotation_params
      params.require(:quotation).permit(:quote, :user_id)
    end
end
