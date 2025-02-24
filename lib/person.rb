# your code goes here
class Person 

    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

        def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
            @name = name
            @bank_account = bank_account
            @happiness = happiness
            @hygiene = hygiene
        end

        def happiness=(happiness)
            if happiness > 10
                @happiness = 10
            elsif happiness < 0
                @happiness = 0
            else
                @happiness = happiness
            end
        end

        def hygiene=(hygiene)
            if hygiene > 10
                @hygiene = 10
            elsif hygiene < 0
                @hygiene = 0
            else
                @hygiene = hygiene
            end
        end

        def happy?
           self.happiness > 7
        end

        def clean? 
            self.hygiene > 7
        end

        def get_paid(amount)
            self.bank_account += amount
            "all about the benjamins"
        end

        def take_bath
            self.hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def work_out 
            self.hygiene -= 3
            self.happiness += 2
            "♪ another one bites the dust ♫"
        end
        def call_friend(person)
            self.happiness += 3
            person.happiness += 3
            "Hi #{person.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(person, topic)
            case topic
            when 'politics'
                person.happiness -= 2
                self.happiness -= 2
              return  'blah blah partisan blah lobbyist'
               
            when 'weather'
                person.happiness += 1
                self.happiness += 1
               return 'blah blah sun blah rain'
                
            else
               return 'blah blah blah blah blah'
            end
        end



    end