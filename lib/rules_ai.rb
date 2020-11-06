require "rules_ai/version"

module RulesAi
  class Error < StandardError; end

  # Your code goes here...
  class Rules_Set
    def self.hours_passed
      a = File.read("data/hours_passed/number/a_input.txt").strip.to_i
      b = File.read("data/hours_passed/number/b_input.txt").strip.to_i

      starting_time = a
      ending_time   = b

      hours_passed = ending_time - starting_time

      second_starting_time = a + interval_a
      second_ending_time   = second_starting_time + hours_passed

      puts "For starting time #{a} and ending time: #{b}: #{hours_passed} has passed."
      puts "For starting time #{second_starting_time} and same hours passed: the second ending time is #{second_ending_time}"
    end

    def self.tesla_multiplication
      input  = File.read("data/tesla_multiplication/number/input.txt").strip.to_f
      rounds = File.read("data/tesla_multiplication/number/input.txt").strip.to_i

      if input > 100
        input = 0
      end

      number = input

      # Infinity algorithm.
      round_1 = number  / 2 # 1
      round_2 = round_1 / 2 # 2
      round_3 = round_2 / 2 # 4
      round_4 = round_3 / 2 # 8
      round_5 = round_4 * 7
      round_6 = round_5 * 5

      new_number = round_6

      open("data/number/input.txt", "w") { |f|
        f.puts new_number
      }
    end

    def self.autonomous_prompting
      number  = File.read("data/autonomous_prompting/input/number.txt").strip.to_i

      if number > 3
        number = 0
      end

      version = [
        "brush_teeth",
        "make_bed",
        "go_run_laps",
        "take_shower",
      ]

      if    version[number] == "brush_teeth"; system("tts 'Time to brush your teeth.', 'en'")
      elsif version[number] ==    "make_bed"; system("tts 'Time to make your bed.', 'en'")
      elsif version[number] == "go_run_laps"; system("tts 'Time to go run some laps.', 'en'")
      elsif version[number] == "take_shower"; system("tts 'Time to take a shower.', 'en'")
      end

      number = number + 1

      open("data/input/number.txt", "w") { |f|
        f.puts number
      }
    end

    def self.greet_user
      print "What is your name? >> "; name = gets.chomp

      puts "Hello, #{name}."
    end

    ## Simple reciprocal cipher with randomized key.
    def self.mixed_13
      alph = File.read("keyset/alph.txt").strip
      beta = File.read("keyset/beta.txt").strip

      input = File.read("documents/plaintext.txt").to_s.upcase

      ciphertext = input.tr alph, beta

      open("documents/ciphertext.txt", "w") { |f|
        f.puts ciphertext
      }
    end

    #def self.write_poetry
    #end

    def self.estimate_digest
      ream_size = 4

      print "How many drawn pages do you have? >> "; page_count = gets.chomp.to_i

      loop_count   = page_count / ream_size
      rounded_loop = loop_count.to_i + 1 

      total_pages = 0

      actual_multiplier = 0

      rounded_loop.times do
        total_pages += ream_size
  
        actual_multiplier += 1
      end

      extra_content = total_pages - page_count

      cover_pages = 2

      total_count = total_pages + cover_pages

      puts "\nThe total pages are: #{total_pages} pages"
      puts "The total pages for extra content: #{extra_content} pages."
      puts "The total ream count is: #{actual_multiplier} reams of #{ream_size} pages."
      puts "With front and back cover, the final bound book is #{total_count} pages."
    end

    def calculate_hyper
      print "What is the size of x? >> "; x = gets.chomp.to_i
      print "What is the size of y? >> "; y = gets.chomp.to_i
      print "What is the size of z? >> "; z = gets.chomp.to_i

      square_x = x * 48
      square_y = y * 48
      square_z = z * 48

      inches       =        x +        y +        z
      hyper_inches = square_x + square_y + square_z

      puts "\nThe size of the w axis of x is hyper distance #{square_x}"
      puts "The size of the w axis of y is hyper distance #{square_y}"
      puts "The size of the w axis of z is hyper distance #{square_z}"

      puts "The hyper inches of the tessaract is #{hyper_inches} hyper distance."
    end
  end

  ######################################################################
  # Don't mess with these, these revolve around spatial relationships. #
  ######################################################################

  class Chatbot

    def self.bianca_name
      bot_name  = File.read("bot_identity/name.txt").strip
      your_name = File.read("usr_identity/name.txt").strip

      puts "#{bot_name}: What is your name?"
      print "#{your_name}: My name is "; my_name = gets.chomp

      open("usr_identity/name.txt", "w") { |f|
        f.puts my_name
      }

      puts "#{bot_name}: Nice to meet you, #{my_name}."
    end

    def self.bianca_pets
      bot_name  = File.read("bot_identity/name.txt").strip
      your_name = File.read("usr_identity/name.txt").strip

      puts "#{bot_name}: Do you have a pet?"
      print "#{your_name}: My pet is "; my_pet = gets.chomp

      open("usr_identity/pet.txt", "w") { |f|
        f.puts my_pet
      }

      puts "#{bot_name}: You have a nice #{my_pet}."
    end

    def self.bianca_hobby
      bot_name  = File.read("bot_identity/name.txt").strip
      your_name = File.read("usr_identity/name.txt").strip

      puts "#{bot_name}: What is your hobby?"
      print "#{your_name}: My hobby is "; my_hobby = gets.chomp

      open("usr_identity/hobby.txt", "w") { |f|
        f.puts my_hobby
      }

      puts "#{bot_name}: You have a nice #{my_hobby}."
    end

    def self.bianca_jobs
      bot_name  = File.read("bot_identity/name.txt").strip
      your_name = File.read("usr_identity/name.txt").strip

      puts "#{bot_name}: What is your job?"
      print "#{your_name}: My job is "; my_job = gets.chomp

      open("usr_identity/job.txt", "w") { |f|
        f.puts my_job
      }

      puts "#{bot_name}: Sounds like #{my_job} is hard work."
    end

    def self.bianca_skills
      bot_name  = File.read("bot_identity/name.txt").strip
      your_name = File.read("usr_identity/name.txt").strip

      puts "#{bot_name}: What is your skill?"
      print "#{your_name}: My skill is "; my_skill = gets.chomp

      open("usr_identity/skill.txt", "w") { |f|
        f.puts my_skill
      }

      puts "#{bot_name}: #{my_skill} sounds like an interesting skill."
    end
  end

  class New_Routine # Generates Meta rules

    def self.generate_ruleset
      ruleset = File.readlines("data/rules/input.txt")

      scatter_rules = ruleset.shuffle

      puts "Generated Rules:\n#{scatter_rules}"

      open("new_routine.rb", "w") { |f|
        puts 'require "rules_ai"'
        puts "\n#{scatter_rules}"
      }
    end

    def self.test_rule
      system("ruby new_routine.rb")
    end
  end
end
