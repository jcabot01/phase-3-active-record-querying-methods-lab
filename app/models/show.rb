class Show < ActiveRecord::Base
#class methods
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating).first  # ? gets replace with whatever follows the comma, then find the ".first" record of that instance
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating >= ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end