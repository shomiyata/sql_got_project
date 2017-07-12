require "csv"
require "sqlite3"

require_relative './parser.rb'



  db = SQLite3::Database.new('got_database.db')

  def create_table_house
    sql = <<-SQL
    CREATE TABLE houses (
      id INTEGER PRIMARY KEY,
      name TEXT
    );
    SQL

    db.execute(sql)
  end


  def create_table_battle
    sql = <<-SQL
    CREATE TABLE battles (
      id INTEGER PRIMARY KEY,
      name TEXT,
      outcome TEXT,
      location TEXT,
      attacker_size INTEGER,
      defender_size INTEGER,
      battle_type TEXT
    );
    SQL

  db.execute(sql)
  end

  def create_table_house_battle
    sql = <<-SQL
    CREATE TABLE housebattle (
      id INTEGER PRIMARY KEY,
      house_id INTEGER,
      battle_id INTEGER
    );
    SQL

    db.execute(sql)
  end

  def method_name
  end


  housebattles = []
  # CSV.read('got_database.csv')[1..-1].each do |row|
  #   temp = []
  #   temp << row[0]
  #   temp << row[13]
  #   temp << row[22]
  #   temp << row[17]
  #   temp << row[18]
  #   temp << row[14]
  #   housebattles << temp
  # end
  a =  CSV.read('got_database.csv')
  # binding.pry

  sql = <<-SQL
    INSERT INTO housebattles (name,
        outcome,
        location,
        attacker_size,
        defender_size,
        battle_type) VALUES (?,?,?,?,?,?)
  SQL

  # battles.each do |row|
    # db.execute(sql, *row)
  # end



  # puts attackers.length

  # db = SQLite3::Database.new('got_database.db')
  #
  # attacker_1 = 5
  # attacker_2 = 6
  # attacker_3 = 7
  # attacker_4 = 8
  # defender_1 = 9
  # defender_2 = 10
  # defender_3 = 11
  # defender_4 = 12
  # attacker_outcome = 13
  # battle_type = 14
  # attacker_size = 17
  # defender_size = 18
  # location = 22
  #
  # got_table = []
  #
  # CSV.read('got_database.csv')[1..-1].each do |row|
  #   temp = []
  #   temp << row[5]
  #   temp << row[6]
  #   temp << row[7]
  #   temp << row[8]
  #   temp << row[9]
  #   temp << row[10]
  #   temp << row[11]
  #   temp << row[12]
  #   temp << row[13]
  #   temp << row[14]
  #   temp << row[17]
  #   temp << row[18]
  #   temp << row[22]
  #   got_table << temp
  # end
  #
  # question_marks = ("?"*13).chars.join(", ")

  # add_data = <<-SQL
  #   INSERT INTO gots (
  #     attacker_1,
  #     attacker_2,
  #     attacker_3,
  #     attacker_4,
  #     defender_1,
  #     defender_2,
  #     defender_3,
  #     defender_4,
  #     attacker_outcome,
  #     battle_type,
  #     attacker_size,
  #     defender_size,
  #     location
  #   ) VALUES (#{question_marks})
  # SQL
  #
  # got_table.each do |row|
  #   db.execute(add_data, *row)
  # end
  #
  #
  # create_table = <<-SQL
  # CREATE TABLE gots (
  #   attacker_1 TEXT,
  #   attacker_2
  #   attacker_3
  #   attacker_4
  #   defender_1
  #   defender_2
  #   defender_3
  #   defender_4
  #   attacker_outcome
  #   battle_type
  #   attacker_size
  #   defender_size
  #   location
  # )
  # SQL
  #
  #
  #
  #
  # question_marks = ("?"*25).chars.join(", ")
  #
  # add_columns = <<-SQL
  #   INSERT INTO gots (
  #     name,
  #     year,
  #     battle_number,
  #     attacker_king ,
  #     defender_king,
  #     attacker_1,
  #     attacker_2,
  #     attacker_3,
  #     attacker_4,
  #     defender_1,
  #     defender_2,
  #     defender_3,
  #     defender_4,
  #     attacker_outcome,
  #     battle_type,
  #     major_death,
  #     major_capture,
  #     attacker_size,
  #     defender_size,
  #     attacker_commander,
  #     defender_commander,
  #     summer,
  #     location, region, note) VALUES (#{question_marks})
  # SQL
  #
  #
  #
  #
  # drop_table = <<-SQL
  # DROP TABLE gots
  # SQL
  #
  # db.execute(drop_table)

  # --------------
  # require 'csv'
  #
  # candidate_columns = ["id", "name"]
  # song_columns = ["id", "artist_id", "album_id", "the"]
  # line_columns = ["id", "song_id", "candidate_id"]
  # album_columns = ["album_release_date"]
  # artist_columns = ["id", "name"]
  #
  # candidate = 1
  # song = 2
  # artist = 3
  # sentiment = 4
  # theme = 5
  # album_release_date = 6
  # line = 7
  # url = 8
  #
  # CSV.read('./genius_hip_hop_lyrics.csv') do |row|
  #   puts row[id]
  #   puts row[song]
  # end
  #
  # dbconn.execute("
  # CREATE TABLE
  # ")
  #
  # CSV.foreach('./lyrics.csv') do |row|
  #   artists_dummy_table << [row[artist]]
  #   album_dummy_table << [row[album artist]]
  # end
