require 'sqlite3'
require_relative '../lib/Got.rb'

DB = {:conn => SQLite3::Database.new("db/got_database.db")}
