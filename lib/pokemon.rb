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

  def save(name, type, db)
    sql = "INSERT INTO pokemon(name, type, db) VALUES (?, ?, ?)"
    @db.execute(sql, self.name, self.type, self.db)
    #DB[:conn].execute(sql, self.name, self.type, self.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end


def self.find
end

  #The Pokemon class is responsible for saving, adding, removing, or changing anything about each Pokémon.
end
