require 'sinatra'
require 'mysql2'
require 'json'

Mysqlclient = Mysql2::Client.new(host: 'localhost',
                                 username: 'anychart_user',
                                 password: 'anychart_pass',
                                 database: 'anychart_db')

def get_top_fruits
  Mysqlclient.query('SELECT name, value FROM fruits ORDER BY value DESC LIMIT 5', :as => :hash).to_a
end

get '/' do
  data = get_top_fruits
  chart = {chart: {type: 'pie', title: 'Top 5 fruits', data: data, container: 'container'}}
  erb :main, locals: {title: 'Anychart Ruby template', chartData: chart.to_json}
end
