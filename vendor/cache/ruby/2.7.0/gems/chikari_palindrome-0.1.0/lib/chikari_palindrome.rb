require "chikari_palindrome/version"

module ChikariPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z1-9]/i).join.downcase
  end
end

class String
  include ChikariPalindrome
end

class Integer
  include ChikariPalindrome
end
