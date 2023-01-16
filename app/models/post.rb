class Post < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_or_description, against: [:title, :description],
                  using: { tsearch: { prefix: true } }
end
