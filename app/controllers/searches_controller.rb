class SearchesController < ApplicationController
  before_action :set_search, only: %i[ show edit update destroy ]

  # GET /searches or /searches.json
  def index
    @searches = Search.all
  end

  def create(query, user)
    Search.new(:query => query, :user => user)
  end
end
