# Preview all emails at http://localhost:3000/rails/mailers/search_history
class SearchHistoryPreview < ActionMailer::Preview
  def new_history_email
    # Set up a temporary order for the preview
    search = Search.new(query: 'Joe Smith', user_id: 4)

    OrderMailer.with(search:).new_history_email
  end
end
