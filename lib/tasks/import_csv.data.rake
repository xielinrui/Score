# create a rake task to import the CSV data
# new file: lib/tasks/import_csv_data.rake
namespace :csvimport do
  desc "Import CSV.Data=>row[]"
  task :import_cj => :environment do
    require 'csv'
    csv_file_path = './db/201301.csv'
    i=0
    Cj.delete_all
    print 'beging import CSV file data...',csv_file_path
    CSV.foreach(csv_file_path,:headers=>true) do |row|
	Cj.create!({
     	:ksh=>row[0],
     	:zkzh=>row[1],
     	:xx=>row[2],
     	:nj=>row[3],
     	:bj=>row[4],
    	:zh=>row[5],
    	:xm=>row[6],
    	:yw=>row[7],
    	:sx=>row[8],
    	:yy=>row[9],
    	:wl=>row[10],
    	:hx=>row[11],
    	:sw=>row[12],
    	:zz=>row[13],
    	:ls=>row[14],
    	:dl=>row[15]})
        print i+=1 ,row[3],row[6]
        puts " "
        end
    end
end
