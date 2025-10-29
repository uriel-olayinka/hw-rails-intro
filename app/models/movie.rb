class Movie < ApplicationRecord
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      all
    else
      where(rating: ratings_list)
    end
  end
end
