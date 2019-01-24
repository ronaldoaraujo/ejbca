require 'rspec/expectations'

RSpec::Matchers.define :eq_xml do |expected|
  match do |actual|
    canonicalize(expected) == canonicalize(actual.to_s)
  end

  failure_message do |actual|
    "expected that #{canonicalize(actual)} would be #{canonicalize(expected)}"
  end

  def canonicalize(xml)
    Nokogiri::XML(xml, &:noblanks).canonicalize
  end
end
