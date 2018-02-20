class API::ItemsController < ApplicationController
  before_action :authenticated?

  def create
    item = current_user.lists.find(params[:list_id]).items.build(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def destroy
    begin
      @item = Item.find(params[:id])
      raise unless @item.list.user == current_user
      @item.destroy
      # render HTTP 204 No Content to indicate the server successfully
      # processed the request but isn't returning any content
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end
  
  private

  def item_params
      params.require(:item).permit(:name)
  end
end
