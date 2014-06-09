class GemInit
  def self.gemInit
    time = Time.new

    name = ""
    version = "0.0.1"
    date = time.year.to_s + "-" + time.month.to_s + "-" + time.day.to_s
    summary = ""
    description = ""
    authors = ""
    email = ""

    puts "Gem name?"
    name = gets.chomp
    files = "lib/" + name + ".rb"
    Dir.mkdir name

    puts "Gem summary?"
    summary = gets.chomp

    puts "Gem description?"
    description = gets.chomp

    puts "Gem author?"
    authors = gets.chomp

    puts "Gem email?"
    email = gets.chomp

    gemspec = 'Gem::Specification.new do |s|
      s.name = "' + name + '"
      s.version = "' + version + '"
      s.date = "' + date + '"
      s.summary = "' + summary + '"
      s.description = "' + description + '"
      s.authors = ["' + authors + '"]
      s.email = "' + email + '"
      s.files = ["' + files + '"]
end'

    gemspecFileName = name + "/" + name + ".gemspec"

    File.open(gemspecFileName, 'w+'){
       |f| f.write(gemspec)
       f.close()
    }

    gemFileName = name + "/" + 'lib/' + name + '.rb'
    gemFile = 'class ' + name.split.map(&:capitalize).join('') + '
      #TODO
end'

    Dir.mkdir name + "/" + 'lib'
    File.open(gemFileName, 'w+'){
       |f| f.write(gemFile)
       f.close()
   }
  end
end
