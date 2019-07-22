class Library

  attr_accessor :book_list

  def initialize(book_list)
    @book_list = book_list
  end

  # def get_books
  #   return @book_list
  # end

  def all_book_info(name)
    for book in @book_list
      if book[:title] == name
        return book
      end
    end
  end

  def book_rental_details(name)
    for book in @book_list
      if book[:title] == name
        return book[:rental_details]
      end
    end
  end

  def add_to_book_list()
    @book_list << {
      title: "the light fantastic",
      rental_details: {
        student_name: "",
        date: ""
        }
      }
    return @book_list[2]
  end

end
