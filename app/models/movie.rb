require 'pry'

class Movie < ActiveRecord::Base
    def self.create_with_title(provided_title)
        self.find_or_create_by(title: provided_title)
    end

    def self.first_movie
        self.all[0]
    end

    def self.last_movie
        self.all[-1]
    end

    def self.movie_count
        self.all.length
    end

    def self.find_movie_with_id(provided_id)
        self.find(provided_id)
    end

    def self.find_movie_with_attributes(attribute_hash)
        self.find_by(attribute_hash)
    end

    def self.annihilate(movie_id)
        self.find(movie_id).delete
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(attribute_hash)
        self.update(attribute_hash)
    end

    def self.update_all_titles(provided_title)
        self.update_all("title = '#{provided_title}'")
    end

    def self.delete_by_id(provided_id)
        self.find(provided_id).delete
    end

    def self.delete_all_movies
        self.delete_all
    end
end