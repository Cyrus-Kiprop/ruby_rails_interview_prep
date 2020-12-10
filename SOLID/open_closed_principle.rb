# this principle states that classes or methods should be open for extension, but closed for modification
# this tells us that we should strive to for modular designs that makes it possible for us 
# to change the behaviour of the system without making modification to the classes themeselves.
# this is achieved through the use of a pattern such as the strategy pattern.


class UsageFileParser
  def initialize(client, parser)
    @client = client
    @parser = parser
  end

  def parse(usage_file)
    parser.parse(usage_file)
    @client.last_parse = Time.now
    @client.save!
  end
end

class XmlParser
  def parse(usage_file)
    p "parse xml"
  end
end

class CsvParser
  def parse(usage_file)
    p 'parse csv'
  end
end

xml = XmlParser.new
csv = CsvParser.new

b = UsageFileParser.new("kiprop", xml)

p b.parse("kiprop")

