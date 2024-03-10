require 'csv'
def parser_csv(file_name)
  csv_data = []
  
  CSV.foreach(file_name, headers: true) do |row|
    csv_data << row.to_h
  end  
  csv_data
end

file_name = 'data.csv'
parsed_data = parser_csv(file_name)
puts parsed_data.inspect
