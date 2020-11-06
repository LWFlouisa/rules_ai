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
