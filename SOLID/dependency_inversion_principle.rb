# this principle is responsible for decoupling hight level business logic objects
# not depending on low (database queyring and IO) implementation details

# To achieve the above decoupling, duck typing and and the Dependencey inversion principle
# is used. Often this is used to achieve the OPen/Closed Principle that we discussed above. 

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
    # parse xml
  end
end

class CsvParser
  def parse(usage_file)
    # parse csv
  end
end

# From the above implementation we see that the high level file parser does not depend directly on an implementation of 
# level XmlParser and CsvParser modules.
