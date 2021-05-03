class View

  def create_gossip
    puts "enter content"
    print ">"
    content = gets.chomp
    puts "enter author"
    print ">"
    author = gets.chomp
    return params = {content: content, author: author}
  end

  def index_gossips(gossips)
    puts "here are the list of gossips :"
    puts ""
    gossips.each do |gossip|
      puts gossip.author
      puts gossip.content
      puts ""
    end
  end

  def delete_gossip
    puts "what's the content?"
    print ">"
    content = gets.chomp
    puts "Who's the author"
    print ">"
    author = gets.chomp
    puts "the gossip has been deleted with success !"
    return params = {content: content, author: author}
  end
end