# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # split by commas or spaces
    array = @emails.split(/[,|\s]/).uniq
    array.reject { |email| email.empty? }
  end

end
