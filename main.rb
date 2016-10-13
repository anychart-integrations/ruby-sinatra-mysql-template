require 'sinatra'
require 'mysql2'
require 'json'

Mysqlclient = Mysql2::Client.new(:host => "localhost",
	:username => "anychart_user",
	:password => "anychart_pass",
	:database => "anychart_db")

def get_top_fruits
	res = []
	data = Mysqlclient.query("SELECT * FROM fruits ORDER BY value DESC LIMIT 5", :as => :hash)
	data.each do |row|
		row.delete "id"
		res.push row
	end 
	return res
end

get "/" do 
	data = get_top_fruits
	chart = {
		:chart => {
			:type => "pie",
			:title => "Top 5 fruits",
			:data => data,
			:container => "container"
		}
	}
	erb :main, :locals => {
		:chartData => chart.to_json,
		:title => "Anychart Ruby template"
	}
end