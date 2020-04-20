class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id = nil, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save
    sql = <<-SQL
    INSERT INTO pokemon (id, name, type, db)
    VALUES ()
    SQL
  end
  
  def self.find
  end
end
