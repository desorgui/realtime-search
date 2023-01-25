class SearchesController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /searches or /searches.json
  def index
    @searches = Search.where(user: current_user).group(:query).order(count: :asc).count
  end

  def send_history
    @searches = Search.where(user: current_user).group(:query).order(count: :asc).count
    SearchHistoryMailer.with(searches: @searches, email: params[:email]).new_history_email.deliver_now
    redirect_to searches_path
  end

  def create
    last_record = Search.where(user_id: current_user.id).last || Search.new(query: ' ')

    if similarity_check(last_record.query, params[:query])
      last_record.update(query: params[:query])
    else
      search_params = params.require(:search).permit(:query)
      @search = Search.new(search_params)
      @search.user = current_user

      respond_to do |format|
        if @search.save
          format.html { redirect_to posts_url, notice: 'Your search was successfully recorded.' }
          format.json { render @posts, status: :created, location: @searches }
        else
          format.json { render json: @search.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

  def similarity_check(last_record_query, params_query)
    JaroWinkler.distance(params_query, last_record_query, ignore_case: true) >= 0.85
  end
end
