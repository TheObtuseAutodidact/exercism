class PhoneNumber
  def self.clean(phone_number)
    pn = phone_number.chars.select(&:numeric?).join
    validate(pn)
  end

  private_class_method
  def self.validate(phone_number)
    if phone_number.length == 11 && phone_number[0] == '1'
      phone_number = phone_number[1..-1]
    end

    if (phone_number.length == 10) &&
       ('2'..'9').cover?(phone_number[0]) &&
       ('2'..'9').cover?(phone_number[3])
      return phone_number
    end
  end
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

module BookKeeping
  VERSION = 2
end
