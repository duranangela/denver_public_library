class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date

  def initialize(args = {})
    @author_first_name = args.fetch(:author_first_name, '')
    @author_last_name = args.fetch(:author_last_name, '')
    @title = args.fetch(:title, '')
    @publication_date = args.fetch(:publication_date, '')[-4..-1]
  end

end
