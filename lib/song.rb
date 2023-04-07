require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    #macro representing both attr_reader and attr_writer
    #attr_reader :keyword // #keyword
    # def keyword
    #     @keyword
    # end
    #attr_writer :keyword //#keyword=
    # def keyword=keyword
    #     @keyword=keyword
    # end
    
    @@count = 0
    @@artists = []
    @@genres = []
    # the above are class (@@) variables, none of this data pertains to any one individual song

    def initialize(name, artist, genre)
    # the #new instance method
        @name = name
        @artist = artist
        @genre = genre
    # instance variable that are attributes of one individual song
        @@count +=1
        @@artists << artist
        @@genres << genre
    # the #initialize method interacts with class variables as well, shoveling artists and genres into their respective arrays and increases the total count by 1
    end

    def self.count
    # a class method indicated by self
        @@count
    # returns the class variable of @@count
    end

    def self.artists
    # a class method indicated by self
        @@artists.uniq
    # the #uniq method returns each unique element in the array of @@artists class variable
    end
    
    def self.genres
    # a class method indicated by sellf
        @@genres.uniq
    # the #uniq method returns each unique element in the array of @@artists class variable 
    end

    def self.genre_count
    # a class method indicated byself
        genre_count = @@genres.tally
    # the #tally method is called on the class variable @@genres to return a histogram
        genre_count
    # returns the genre count
    end

    def self.artist_count
        artist_count = @@artists.tally
        artist_count
    end

end