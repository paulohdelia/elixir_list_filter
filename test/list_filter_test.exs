defmodule ListFilterTest do
  use ExUnit.Case
  # doctest ListFilter

  describe "call/1" do
    test "returns total amount of odd numbers" do
      list = ["1", "3", "6", "43", "arara", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
