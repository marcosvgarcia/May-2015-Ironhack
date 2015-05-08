require 'imdb'

require 'ascii_charts'

class ImdbRating

	attr_accessor :imdb_movies_ratings

	def initialize

		generate_imdb_ratings
		histogram
		show_film_position
	end

	def generate_imdb_ratings imdb_movies_ratings = {}

		movie_list = IO.readlines('Movies.txt')

		imdb_total_movies = []

		imdb_movies = []

		@imdb_movies_ratings = imdb_movies_ratings

		movie_list.each do |i|

			imdb_total_movies.push Imdb::Search.new(i)
		end

		imdb_total_movies.each do |i|

			imdb_movies.push i.movies[1] 
		end

		imdb_movies.each do |movie|

			imdb_movies_ratings[movie.title] = movie.rating
		end

		# puts imdb_movies_ratings
	end

	def histogram

		data = []

		i = 1

		imdb_movies_ratings.each do |movie, rating|

			data << [i, rating.to_i.round]
			i += 1
		end

		puts AsciiCharts::Cartesian.new(data, :bar => true, :hide_zero => true).draw
	end

	def show_film_position

		film_position = []

		i = 1

		imdb_movies_ratings.each do |movie, rating|

			film_position << "#{i} -> #{movie}"
			i += 1
		end	

		film_position.each do |i|

			puts i
		end
	end	
end

imdb = ImdbRating.new 

