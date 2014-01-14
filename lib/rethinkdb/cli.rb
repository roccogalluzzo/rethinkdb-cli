require 'rethinkdb'
require 'ripl'
require "rethinkdb/cli/version"

module Rethinkdb
  module Cli
    def self.start
      r = RethinkDB::RQL.new
      $c = r.connect(:host => 'localhost', :port => 28015).repl
      Ripl.start
    end
  end
end
