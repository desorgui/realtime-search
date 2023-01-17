class Post < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  pg_search_scope :search_by_title_or_description, against: [:title, :description],
                  using: {
                    tsearch: { prefix: true, any_word: true },
                    trigram: {
                      only: [:title, :description],
                      threshold: 0.25
                    }
                  }
end
