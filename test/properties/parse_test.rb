require 'test_helper'

class Properties::ParseTest < Test::Unit::TestCase
  def setup
    @properties = Properties::Parse.load './data/test.properties'
    #nop
  end
  
  def test_load_properties
    assert !@properties.nil?
  end
  
  def test_load_properties_with_alias
    properties = Properties::Parse.load_properties './data/test.properties'
    assert !properties.nil?
  end
  
  def test_get_key
    float = Properties::Parse.get 'score_threshold'
    assert_equal float , 0.3
    
    string =  Properties::Parse.get 'account_terms'
    assert_equal string,'You must be 13 years or older to use this Service.'
  end
  
  def test_get_key_alias
    float = Properties::Parse.get_property 'score_threshold'
    assert_equal float , 0.3
    
    string =  Properties::Parse.get_property 'account_terms'
    assert_equal string,'You must be 13 years or older to use this Service.'
  end
  
  def test_keys
    keys = Properties::Parse.keys
    assert_equal keys,%w{Intercept f7_mid f2_mid f4_mid f4_threshold score_threshold account_terms}
  end
  
  def test_values
    
  end
end