class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(keywords)
  
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon (name, type, db)
    VALUES (?, ?, ?)
    SQL
    
    DB[:conn].execute(sql, name, type, db)
    
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
  def self.find
  end
end
