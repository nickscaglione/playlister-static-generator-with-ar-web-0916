class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def to_slug
    name.downcase.split(" ").join("-")
  end

end
