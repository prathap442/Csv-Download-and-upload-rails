class Product < ApplicationRecord
  def self.import(csv_file)
    CSV.foreach(csv_file.path,headers: true) do |row|
      Product.create(name: row[1],price: row[19],released_on: (Time.now+Random.rand(1..2324).to_i))
    end
  end
end
