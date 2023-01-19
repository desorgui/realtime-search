class SearchHistoryMailer < ApplicationMailer
  def new_history_email
    @searches = params[:searches]

    mail(to: params[:email], subject: 'Your search history copy!')
  end
end
