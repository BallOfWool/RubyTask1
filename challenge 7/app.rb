# frozen_string_literal: true

require_relative 'database/data_to_db'
require './reports/reports'

class Start
    include Reports

    def initialize()
        conn = data_to_db()
    
        reports(conn)
    end
end

start = Start.new()