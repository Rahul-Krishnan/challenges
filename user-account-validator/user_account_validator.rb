class EmailMissingError < StandardError
  def initialize(msg="You are missing an email!")
    super
  end
end

class UserAccountValidator
  # your code, here
  attr_reader :email, :username, :name

  def initialize user_hash
    @email = user_hash[:email]
    @username = user_hash[:username]
    @name = user_hash[:name]

    def missing_bits
      if username_missing?
        raise "You are missing a username!"
      elsif email_missing?
        raise EmailMissingError
      elsif atsymbol_missing?
        raise "You are missing an @ symbol!"
      end
    end

    def email_missing?
      if @email==""
        true
      else
        false
      end
    end

    def username_missing?
      if @username==""
        true
      else
        false
      end
    end

    def atsymbol_missing?
      if (@email.nil? || !@email.include?("@"))
        true
      else
        false
      end
    end

    missing_bits

  end
end
