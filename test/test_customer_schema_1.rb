require 'test/unit'
require 'json-schema'

class AnyOfRefSchemaTest < Test::Unit::TestCase
  def test_any_of_ref_schema
    schema = File.join(File.dirname(__FILE__),"schemas/customer_schema_1.json")
    data = File.join(File.dirname(__FILE__),"data/customer_data_1.json")
    errors = JSON::Validator.fully_validate(schema,data, :strict => true, :errors_as_objects => true)
    assert(errors.empty?, errors.map{|e| e[:message] }.join("\n"))
  end
end
