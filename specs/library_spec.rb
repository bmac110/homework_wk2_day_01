require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test

  def setup()
    @library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "the blade itself",
        rental_details: {
          student_name: "Laura",
          date: "02/12/16"
        }
      },
      #   {
      #     title: "the light fantastic",
      #     rental_details: {
      #       student_name: "",
      #       date: ""
      #     }
      # }

      ])

    end


    # def test_get_books()
    #   assert_equal(2, @library.get_books().count())
    # end

    def test_all_book_info()

      assert_equal(
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
          }, @library.all_book_info("lord_of_the_rings"))
    end

    def test_book_rental_details()
      assert_equal(
        {
          student_name: "Laura",
          date: "02/12/16"
        } , @library.book_rental_details("the blade itself"))
    end

    def test_add_to_book_list()
      assert_equal({
        title: "the light fantastic",
        rental_details: {
          student_name: "",
          date: ""
        }
        }, @library.add_to_book_list)
      end

    # def test_change_rental_details()
    #   assert_equal()
    # end


end
