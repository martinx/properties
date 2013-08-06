#Simple parse for Java Properties

#


# Alipay

A simple alipay ruby gem, without unnecessary magic or wraper, it's directly facing how alipay api works.

It contain this API:

* Generate payment url
* Send goods
* Verify notify

Please read alipay official document first: https://b.alipay.com/order/techService.htm .

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'properties', :github => 'martinx/properties'
```


## Usage

test_helper.rb

```ruby
require 'test/unit'
require 'properties'
```

parse_test.rb

```ruby
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
    values =  Properties::Parse.values
  end
end

```

## Contributing

Bug report or pull request are welcome.

### Make a pull request

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Please write unit test with your code if necessary.
