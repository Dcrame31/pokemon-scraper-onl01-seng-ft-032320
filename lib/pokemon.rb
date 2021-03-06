class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id = nil, name = "", type = "", db = "")
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon (name, type) 
    VALUES (?,?)
    SQL
    db.execute(sql, (name), (type))
  end
  
  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id, pokemon[1], pokemon[2], pokemon[3])
  end
end
