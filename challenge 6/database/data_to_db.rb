require_relative 'database_create'
require_relative 'database_drop'
require_relative '../pars/pars'
require 'csv'

def data_to_db()
    conn = PG.connect(:dbname => 'bank_materials', :password => '', :port => 5432, :user => 'test_user')
    csvFile = CSV.read("./Data_for_task_1.csv", headers: true)
    database_drop(conn)
    database_create(conn)
    get_offices_info(csvFile, conn)
    get_zones_info(csvFile, conn)
    get_rooms_info(csvFile, conn)
    get_fixtures_info(csvFile, conn)
    get_marketing_materials_info(csvFile, conn);
    conn
end
