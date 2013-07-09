class Company < ActiveRecord::Base
  attr_accessible :address, :comments, :contact, :industry,
                  :minimum_order, :name, :phone, :ranking,
                  :subindustry, :website, :id

  def self.to_csv(companies)

    fields = [:name, :contact]

    CSV.generate do |csv|
      csv << [:id, :name, :contact, :address, :phone, :website, :industry, :subindustry, :minimum_order, :comments]
      companies.each do |company|
        csv << [company.id, company.name, company.contact, company.address, company.phone, company.website, company.industry, company.subindustry, company.minimum_order, company.comments]
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Company.create! row.to_hash
    end
  end
end
