class Pokemon
#  attr_accessor :file, :parsed_file, :all_pokemon, :db
  attr_accessor :id, :name, :type, :db
#to call on the scraper, just do Scraper_name.scraper_method
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  #The Pokemon class is responsible for saving, adding, removing, or changing anything about each Pokémon.
end
