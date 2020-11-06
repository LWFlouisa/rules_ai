# RulesAi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rules_ai`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rules_ai'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rules_ai

## Usage

~~~ruby
## Common Ruleset
def hours_passed
  require "rules_ai"

  RulesAI::Rule_Set.hours_passed
end

def tesla_multiplication
  require "rules_ai"

  RulesAI::Rule_Set.tesla_multiplication
end

def autonomous_prompting
  require "rules_ai"

  RulesAI::Rule_Set.autonomous_prompting
end

def greet_user
  require "rules_ai"

  RulesAI::Rule_Set.greet_user
end

def mixed_13
  require "rules_ai"

  RulesAI::Rule_Set.mixed_13
end

def estimate_digest
  require "rules_ai"

  RulesAI::Rule_Set.estimate_digest
end

def caculate_hyper
  require "rules_ai"

  RulesAI::Rule_Set.calculate_hyper
end

## Create meta rule routine and test.
def create_routine
  require "rules_ai"

  RulesAI::New_Routine.generate_ruleset
end

def test_rule
  require "rules_ai"

  RulesAI::New_Routine.test_rule
end

## Brute Force Rule Search
def self.use_form
  model_type = File.read("data/model/model_type.txt").strip

  puts 'Form status: Suitable...'

  sleep(3)

  number           = File.read("data/number/input.txt").strip.to_i
  usr_wings        = File.readlines("data/usr_shape/wings.txt")
  current_wingset  = usr_wings[number].strip

  puts "\nModel Type: #{model_type}\nAction: #{current_wingset}\n"

  sleep(3)

  # system("ruby #{current_wingset}.rb")

  if    current_wingset ==         "hours_passed"; hours_passed
  elsif current_wingset == "tesla_multiplication"; tesla_multiplication
  elsif current_wingset == "autonomous_prompting"; autonomous_prompting
  elsif current_wingset ==           "greet_user"; greet_user
  elsif current_wingset ==             "mixed_13"; mixed_13
  elsif current_wingset ==      "estimate_digest"; estimate_digest
  elsif current_wingset ==      "calculate_hyper"; calculate_hyper
  elsif current_wingset ==       "create_routine"; create_routine; test_rule
  end

  reset_evo

  sleep(3)

  abort
end

def self.reshape
  system("clear")

  model_type = File.read("data/model/model_type.txt").strip

  bot_choice = File.read("data/bot_input/input.txt").strip.to_i
  number     = File.read("data/number/input.txt").strip.to_i

  usr_wings = File.readlines("data/usr_shape/wings.txt")
  bot_wings = File.readlines("data/bot_shape/wings.txt")

  current_wingset  = usr_wings[number]
  current_botwings = bot_wings[bot_choice]

  puts "The user #{model_type} model is: #{current_wingset}"

  puts "The bot #{model_type} model is: #{current_botwings}"

  if current_wingset == current_botwings
    use_form
  else
    puts "Form status: Changing form..."

    sleep(3)

    new_value = number + 1

    open("data/number/input.txt", "w") { |f|
      f.puts new_value
    }
  end

  reshape
end

reset_evo
reshape
~~~

Chatbot functions are bleeding edge features and not yet including, as is Spatial_Relationships and language training.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rules_ai. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rules_ai/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RulesAi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rules_ai/blob/master/CODE_OF_CONDUCT.md).
