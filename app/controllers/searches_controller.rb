class SearchesController < ApplicationController
  before_action :set_search
  skip_before_action :verify_authenticity_token

  # GET /searches or /searches.json
  def index
    @searches = Search.where(user: current_user).group(:query).order(count: :desc).count
  end

  def create
    last_record = Search.where(user_id: current_user.id).last
    similarity_check = JaroWinkler.distance(params[:query], last_record.query, ignore_case: true) >= 0.85

    if similarity_check
      last_record.update(query: params[:query])
    else
      search_params = params.require(:search).permit(:query)
      @search = Search.new(search_params)
      @search.user = current_user  

      respond_to do |format|
        if @search.save
          format.json { render @posts, status: :created, location: @searches }
        else
          format.json { render json: @search.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_search
    @search = Search.find(params[:id])
  end

  # def search_params
  #   params.require(:search).permit(query: params[:query], user: current_user)
  # end
end
