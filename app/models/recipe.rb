class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search_by_recipe_criteria,
  against: [ :dishname, :description ],
  using: {
    tsearch: { prefix: true }
  }

end
