require_relative './lib/database_connection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup(dbname: 'chitter_manager_test')
else
  DatabaseConnection.setup(dbname: 'chitter_manager')
end