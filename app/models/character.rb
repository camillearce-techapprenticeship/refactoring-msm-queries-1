# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def actor 
  my_id = self.actor_id
  
  matching_actors = Actor.where({ :id => my_id })

  return matching_actors
  end 

  def movie
    my_id = self.movie_id

    matching_movies = Movie.where({ :id => my_id }).at(0)

    return matching_movies
  end
  
end

