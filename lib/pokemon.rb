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

  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type, db) VALUES (?, ?, ?)
    SQL
#WHERE id = ?
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  #The Pokemon class is responsible for saving, adding, removing, or changing anything about each Pokémon.
end
