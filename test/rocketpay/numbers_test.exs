defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is file with the given name, returns the sum of the numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when there is no file with the given name, returns on error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file name."}}

      assert response == expected_response
    end
  end
end
