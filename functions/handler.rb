Gem.path << '/opt/ruby/2.5.0'
Gem.refresh

require 'faker'
require 'json'

def lorem(event:, context:)
  method = event['method']
  args = event['args'].map {|key, value| [key.to_sym, value] }.to_h
  values = Faker::Lorem.send(method, **args)

  {
    lorem: {
      method => values
    }
  }.to_json
end
