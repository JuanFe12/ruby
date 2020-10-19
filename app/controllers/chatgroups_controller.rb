class ChatgroupsController < ApplicationController
  before_action :set_chatgroup, only: [:show, :update, :destroy]

  # GET /chatgroups
  def index
    @chatgroups = Chatgroup.all

    render json: @chatgroups
  end

  # GET /chatgroups/1
  def show
    render json: @chatgroup
  end

  # POST /chatgroups
  def create
    @chatgroup = Chatgroup.new(chatgroup_params)

    if @chatgroup.save
      render json: @chatgroup, status: :created, location: @chatgroup
    else
      render json: @chatgroup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chatgroups/1
  def update
    if @chatgroup.update(chatgroup_params)
      render json: @chatgroup
    else
      render json: @chatgroup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chatgroups/1
  def destroy
    @chatgroup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatgroup
      @chatgroup = Chatgroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chatgroup_params
      params.require(:chatgroup).permit(:namegroup, :photogroup, :messagegroup)
    end
end
