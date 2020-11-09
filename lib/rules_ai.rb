require "rules_ai/version"

module RulesAi
  class Error < StandardError; end

  # Your code goes here...
  class Rules_Set
    def self.hours_passed
      a = File.read("evo_data/hours_passed/number/a_input.txt").strip.to_i
      b = File.read("evo_data/hours_passed/number/b_input.txt").strip.to_i

      starting_time = a
      ending_time   = b

      hours_passed = ending_time - starting_time

      second_starting_time = a + interval_a
      second_ending_time   = second_starting_time + hours_passed

      puts "For starting time #{a} and ending time: #{b}: #{hours_passed} has passed."
      puts "For starting time #{second_starting_time} and same hours passed: the second ending time is #{second_ending_time}"
    end

    def self.tesla_multiplication
      input  = File.read("evo_data/tesla_multiplication/number/input.txt").strip.to_f
      rounds = File.read("evo_data/tesla_multiplication/number/input.txt").strip.to_i

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
      system("tts 'Time To Get Up!'")

      monday_meds    = File.read("data/medication/monday_meds.txt").strip
      tuesday_meds   = File.read("data/medication/tuesday_meds.txt").strip
      wednesday_meds = File.read("data/medication/wednesday_meds.txt").strip
      thursday_meds  = File.read("data/medication/thursday_meds.txt").strip
      friday_meds    = File.read("data/medication/friday_meds.txt").strip
      saturday_meds  = File.read("data/medication/saturday_meds.txt").strip
      sunday_meds    = File.read("data/medication/sunday_meds.txt").strip

      system("date > data/time/date.txt")

      data = File.read("data/time/date.txt").split(" ")

      current_day = "#{data[0]}"

      puts "You need to take #{current_day}'s medication."

      if    current_day == "Mon"; puts "Take: #{monday_meds}."
      elsif current_day == "Tue"; puts "Take: #{tuesday_meds}."
      elsif current_day == "Wed"; puts "Take: #{wednesday_meds}."
      elsif current_day == "Thu"; puts "Take: #{thursday_meds}."
      elsif current_day == "Fri"; puts "Take: #{friday_meds}."
      elsif current_day == "Sat"; puts "Take: #{saturday_meds}."
      elsif current_day == "Sun"; puts "Take: #{sunday_meds}."
      end
    end

    def self.greet_user
      print "What is your name? >> "; name = gets.chomp

      puts "Hello, #{name}."
    end

    ## Simple reciprocal cipher with randomized key.
    def self.mixed_13
      alph = File.read("evo_data/keyset/alph.txt").strip
      beta = File.read("evo_data/keyset/beta.txt").strip

      input = File.read("evo_data/documents/plaintext.txt").to_s.downcase

      ciphertext = input.tr alph, beta

      open("evo_data/documents/ciphertext.txt", "w") { |f|
        f.puts ciphertext
      }
    end

    def self.write_poetry
      ## Read In Each Poem
      allistodust               = File.read("syllables/allistodust.txt").strip
      alongforestgreen          = File.read("syllables/alongforestgreen.txt").strip
      anarchojean               = File.read("syllables/anarchojean.txt").strip
      atmydoor                  = File.read("syllables/atmydoor.txt").strip
      badinbed                  = File.read("syllables/badinbed.txt").strip
      beingmyself               = File.read("syllables/castleofthesea.txt").strip
      coping                    = File.read("syllables/coping.txt").strip
      devilgoodcompany          = File.read("syllables/devilgoodcompany.txt").strip
      dianacyberneticdreams     = File.read("syllables/dianacyberneticdreams.txt").strip
      dontfallback              = File.read("syllables/droptheidealogies.txt").strip
      flalaikurose              = File.read("syllables/flalaikurose.txt").strip
      girlnothingbutadream      = File.read("syllables/goodopticsinthetropics.txt").strip
      haywiremeltingdown        = File.read("syllables/haywiremeltingdown.txt").strip
      inthislandoftennessee     = File.read("syllables/inthislandoftennessee.txt").strip
      invisibleminorities       = File.read("syllables/invisibleminorities.txt").strip
      juicyneonsteak            = File.read("syllables/juicyneonsteak.txt").strip
      lackofcommunication       = File.read("syllables/lackofcommunication.txt").strip
      laimencoformoonlight      = File.read("syllables/laimencoformoonlight.txt").strip
      leadwithfeelingnotthemind = File.read("syllables/leadwithfeelingnotthemind.txt").strip
      littleants                = File.read("syllables/littleants.txt").strip
      lonelypetalswither        = File.read("syllables/lonelypetalswither.txt").strip
      marrowlust                = File.read("syllables/marrowlust.txt").strip
      mmesmiled                 = File.read("syllables/mmesmiled.txt").strip
      momentarysilence          = File.read("syllables/nightlystatues.txt").strip
      neveradrollmoment         = File.read("syllables/neveradrollmoment.txt").strip
      newlaconia                = File.read("syllables/newlaconia.txt").strip
      nightlystatues            = File.read("syllables/policestate.txt").strip
      sentimentality            = File.read("syllables/sentimentality.txt").strip
      shadowonthewall           = File.read("syllables/shadowonthewall.txt").strip
      shotgungirl               = File.read("syllables/shotgungirl.txt").strip
      skeletonsfinallaugh       = File.read("syllables/skeletonsfinallaugh.txt").strip
      sliceoflife               = File.read("syllables/sliceoflife.txt").strip
      spidersandtheghost        = File.read("syllables/spidersandtheghost.txt").strip
      superyacht                = File.read("syllables/superyacht.txt").strip
      thegirlwiththerosecheeks  = File.read("syllables/thegirlwiththerosecheeks.txt").strip
      turntodust                = File.read("syllables/turntodust.txt").strip
      undertheweepingwillowtree = File.read("syllables/undertheweepingwillowtree.txt").strip
      unravelingfriendship      = File.read("syllables/unravelingfriendship.txt").strip
      waitinginthewall          = File.read("syllables/waitinginthewall.txt").strip
      whattheysayofrome         = File.read("syllables/whattheysayofrome.txt").strip
      windmillsong              = File.read("syllables/windmillsong.txt").strip

      ## Assign Each Poem To Large String
      super_poem = "
      #{allistodust}
      #{alongforestgreen}
      #{anarchojean}
      #{atmydoor}
      #{badinbed}
      #{beingmyself}
      #{coping}
      #{devilgoodcompany}
      #{dianacyberneticdreams}
      #{dontfallback}
      #{flalaikurose}
      #{girlnothingbutadream}
      #{haywiremeltingdown}
      #{inthislandoftennessee}
      #{invisibleminorities}
      #{juicyneonsteak}
      #{lackofcommunication}
      #{laimencoformoonlight}
      #{leadwithfeelingnotthemind}
      #{littleants}
      #{lonelypetalswither}
      #{marrowlust}
      #{mmesmiled}
      #{momentarysilence}
      #{neveradrollmoment}
      #{newlaconia}
      #{nightlystatues}
      #{sentimentality}
      #{shadowonthewall}
      #{shotgungirl}
      #{skeletonsfinallaugh}
      #{sliceoflife}
      #{spidersandtheghost}
      #{superyacht}
      #{thegirlwiththerosecheeks}
      #{turntodust}
      #{undertheweepingwillowtree}
      #{unravelingfriendship}
      #{waitinginthewall}
      #{whattheysayofrome}
      #{windmillsong}
      ".split(" ").shuffle

      possible_lines = [1, 2, 3, 4, 5, 6, 7, 8].shuffle

      ## Output New Poem From Shuffled String
      line_1 = super_poem[possible_lines[0]]
      line_2 = super_poem[possible_lines[1]]
      line_3 = super_poem[possible_lines[2]]
      line_4 = super_poem[possible_lines[3]]
      line_5 = super_poem[possible_lines[4]]
      line_6 = super_poem[possible_lines[5]]
      line_7 = super_poem[possible_lines[6]]
      line_8 = super_poem[possible_lines[7]]

      open("output/poetry/poem.txt", "w") { |f|
        f.puts "
      #{line_1}
      #{line_2}
      #{line_3}
      #{line_4}
      #{line_5}
      #{line_6}
      #{line_7}
      #{line_8}
        "
      }
    end

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

    def self.calculate_hyper
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

    def self.line
      puts '
       +----------------+
      '
    end

    def self.square
      puts '
   +----------------+
   |                |
   |                |
   |                |
   |                |
   |                |
   |                |
   |                |
   +----------------+
      '
    end

    def self.cube
      puts '
   +----------------+
   |\               |\
   | \              | \
   |  \             |  \
   |   +------------+---+
   |   |            |   |
   |   |            |   |
   |   |            |   |
   +---+------------+   |
    \  |             \  |
     \ |              \ |
      \|               \|
       +----------------+
      '
    end

    def self.hyper
      puts '
                +----------------+
               /|\              /|\
              / | \            / | \
             /  |  \          /  |  \
            /   |   +--------+---+---+
           /    |  /|       /    |  /|
          /     | / |      /     | / |
         /      |/  |     /      |/  |
        /       +---+----+-------+   |
       /       / \  |   /       / \  |
      /       /   \ |  /       /   \ |
     /       /     \| /       /     \|
   +--------+-------+--------+-------+
   |\      /       /|\      /       /
   | \    /       / | \    /       /
   |  \  /       /  |  \  /       /
   |   ++-------+---+---+/       /
   |   +       /    |   +       /
   |  /|      /     |  /|      /
   | / |     /      | / |     /
   +---+----+-------+/  |    /
    \  |   /         \  |   /
     \ |  /           \ |  /
      \| /             \| /
       +----------------+
      '
    end

  end

  class RuleCalculation
    def self.calculate_metarules
      print "How many regular rules? >> "

      r = gets.chomp.to_i

      # For each amount of rules, meta rules is that many variations of rule combination.
      meta_rule_count = r
      meta_rule_size  = r * r
      meta_total      = meta_rule_size * r

      puts "For #{r} many regular rules, there are #{meta_rule_count} metarule variations of #{meta_rule_size} each. Totalling #{meta_total} lines of code."
    end
  end

  # Rulesets generated by the algorithm itself.
  class MetaRuleset

    def self.meta_rule_one
      RulesAi::Rule_Set.estimate_digest
      RulesAi::Rule_Set.autonomous_prompting
      RulesAi::Rule_Set.calculate_hyper
      RulesAi::Rule_Set.mixed_13
      RulesAi::Rule_Set.hours_passed
      RulesAi::Rule_Set.tesla_multiplication
    end

  end

  # Evolutionary Function that calls the rulesets.
  class Evo_Function
  end

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
      ruleset = File.readlines("evo_data/rules/input.txt")

      numbers = "0 1 2 3 4 5".split(" ").shuffle

      one = numbers[0].to_i
      two = numbers[1].to_i
      tre = numbers[2].to_i
      fro = numbers[3].to_i
      fiv = numbers[4].to_i
      six = numbers[5].to_i

      open("new_routine.rb", "w") { |f|
        f.puts "require 'rules_ai'\n\n"
        f.puts "RulesAi::Rule_Set.#{ruleset[one]}"
        f.puts "RulesAi::Rule_Set.#{ruleset[two]}"
        f.puts "RulesAi::Rule_Set.#{ruleset[tre]}"
        f.puts "RulesAi::Rule_Set.#{ruleset[fro]}"
        f.puts "RulesAi::Rule_Set.#{ruleset[fiv]}"
        f.puts "RulesAi::Rule_Set.#{ruleset[six]}"
      }
    end

    def self.test_rule
      system("ruby new_routine.rb")
    end
  end
end
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
