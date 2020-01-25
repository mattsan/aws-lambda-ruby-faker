Gem.path << '/opt/ruby/2.5.0'
Gem.refresh

require 'faker'
require 'json'

def lorem(event:, context:)
  paragraph = Faker::Lorem.paragraph

  {
    lorem: {
      paragraph: paragraph
    }
  }.to_json
end
