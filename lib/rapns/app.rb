module Rapns
  class App < ActiveRecord::Base
    self.table_name = 'rapns_apps'

    validates :key, :presence => true, :uniqueness => true
    validates :certificate, :presence => true
    validates_numericality_of :connections, :greater_than => 0, :only_integer => true
  end
end