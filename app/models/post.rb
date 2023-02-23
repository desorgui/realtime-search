class Post < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  pg_search_scope :search_by_title_or_description, against: %i[title description],
                                                   using: {
                                                     tsearch: { prefix: true },
                                                     trigram: {
                                                       only: %i[title description],
                                                       threshold: 0.25
                                                     }
                                                   }

  validates :title, presence: true
  validates :description, presence: true
end
