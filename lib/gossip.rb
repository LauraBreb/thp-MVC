require 'csv'
class Gossip
  attr_accessor :author, :content

  def initialize (author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("./db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []

    CSV.foreach("./db/gossip.csv") do |row|
      provisional_gossip = Gossip.new(row[0], row[1])
      all_gossips << provisional_gossip
    end
    return all_gossips
  end

  def self.delete(author, content)
    CSV.foreach("./db/gossip.csv") do |row|
      if row.include?(author) && row.include?(content)
      delete[row]
      end
    end
  end

end