class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_length)
    raise SliceOutOfRangeError.new if slice_length > @digits.length
    @digits.chars.map.with_index do |_, idx|
      end_of_slice = idx + slice_length - 1 # -1 corrects for 0 index
      @digits[idx..end_of_slice] if end_of_slice < @digits.length
    end.compact
  end
end

class SliceOutOfRangeError < ArgumentError
  def initialize(msg = 'Slice cannot be longer that digit series')
    super
  end
end
