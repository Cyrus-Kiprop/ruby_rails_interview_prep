# this principle states that classes or methods should be open for extension, but closed for modification
# this tells us that we should strive to for modular designs that makes it possible for us 
# to change the behaviour of the system without making modification to the classes themeselves.
# this is achieved through the use of a pattern such as the strategy pattern.


# consider this scenario

class UsageFileParser
  def initialize(client, usage_file)
    @client = client
    @usage_file = usage_file
  end

  def parse
    case @client.usage_file_format
      when :xml
        parse_xml
      when :csv
        parse_csv
    end

    @client.last_parse = Time.now
    @client.save!
  end

  private

  def parse_xml
    # parse xml
  end

  def parse_csv
    # parse csv
  end
end


# this can be optimised using the following strategical approach


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

