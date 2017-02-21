class PigLatinizer
  attr_accessor :input

  def isVowel(letter)
    ["a","e","i","o","u"].include?(letter.downcase)
  end

      def piglatinize(text)
        if self.isVowel(text[0])
          piglatin = "#{text}way"
        else
          split = text.split(/([aeiou].*)/)
          piglatin = "#{split[1]}#{split[0]}ay"
        end
        piglatin
      end

      def to_pig_latin(phrase)
        split = phrase.split(" ")
        piglatin_phrase = split.map do |word|
          word = piglatinize(word)
        end
        piglatin_phrase.join(" ")
      end








end
