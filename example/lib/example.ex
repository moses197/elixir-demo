# defmodule Membership do
#   defstruct [:type, :price]
# end

# defmodule User do
#   defstruct [:name, :membership]
# end

defmodule Example do
  use Application
  require Integer
  # use Integer
  # alias UUID

  # @x 5

  def start(_type, _args) do
    # IO.puts(Example.hello())
    # IO.puts(UUID.uuid4())

    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end


  def sum_and_average(numbers) do
    sum = Enum.sum(numbers)
    avg = sum / Enum.count(numbers)
    {sum, avg}
  end

  def print_numbers(numbers) do
    numbers |> Enum.join(" ") |> IO.puts()
  end

  def get_numbers_from_user do
    IO.puts("Enter a number seperated by spaces: ")
    user_input = IO.gets("") |> String.trim()
    String.split(user_input, " ") |> Enum.map(&String.to_integer/1)
  end

  def main do
    # x = 5
    # x = 10
    # IO.puts(@x)
    # IO.puts(:hello)
    # IO.puts(:"hello moses")

    # name = "Moses";
    # status = :gold
    # status = Enum.random([:diamond, :gold, :silver, :"not a member"])

    # if status === :gold do
    #   IO.puts("Welcome to the fancy life #{name}")
    # else
    #   IO.puts("Get lost or go home")
    # end

    # case status do
    #   :gold -> IO.puts("Welcome to the fancy life, #{name}")
    #   :"not a member" -> IO.puts("Go Home")
    #   _ -> IO.puts("Bruh... U are a parasite")
    # end

    # ------------------------------------------------------------
    # :io.format("~.20f\n", [0.1])
    # IO.puts(Float.ceil(0.5, 1))

    # IO.puts(Integer.gcd(25, 10))


    # >>>>>>>>>>>>>>>>>>>>>>>>>>>> Compound types >>>>>>>>>>>>>>>>>>>>>>>>>
    # time = Time.new!(16, 30, 0, 0)
    # date = Date.new!(2025, 1, 1)
    # date_time = DateTime.new!(date, time, "Etc/UTC")
    # IO.puts(date_time.year)
    # IO.inspect(date_time)
    # # ----------------------- example app----------
    # time = DateTime.new!(Date.new!(2025, 1, 1), Time.new!(0,0,0,0), "Etc/UTC")
    # time_till = DateTime.diff(time, DateTime.utc_now())
    # IO.puts(time_till)

    # days = div(time_till, 86_400)
    # IO.puts(days)
    # hours = div(rem(time_till, 86_400), 60 * 60)
    # IO.puts(hours)
    # mins = div(rem(time_till, 60 * 60), 60 * 60)
    # IO.puts(mins)

    # secs = rem(time_till, 60)
    # IO.puts(secs)
    # IO.puts("Time until new year: #{days} days, #{hours} hours, #{mins} minutes, #{secs} seconds.")

    # <<<<<<<<<<<<<<<<<<<<< Tuples >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # memberships = {:bronze, :silver, :gold}
    # memberships = Tuple.append(memberships, :diamond)
    # IO.inspect(memberships)

    # prices = {5, 10, 15}
    # avg = Tuple.sum(prices) / tuple_size(prices)

    # IO.puts(avg)

    # IO.puts(
    #   "Average price from #{elem(memberships, 0)} #{elem(memberships, 1)} #{elem(memberships, 2)} is #{avg}"
    # )

    # users = [
      # {"Moses", :diamond},
      # {"Okiki", :gold},
      # {"Ismail", :pata},
      # {"Joshua", :ruby},
      # {"Obi", :plastic},

    # ]

    # Enum.each(users, fn{name, membership} -> IO.puts("#{name} has a #{membership} membership.") end)
    # user1 = {"Moses", :diamond}
    # user2 = {"Okiki", :gold}
    # user3 = {"Ismail", :pata}
    # user4 = {"Joshua", :ruby}
    # user5 = {"Obi", :plastic}

    # {name, membership} = user1
    # IO.puts("#{name} has a #{membership} membership.")

    # {name, membership} = user2
    # IO.puts("#{name} has a #{membership} membership.")

    # {name, membership} = user3
    # IO.puts("#{name} has a #{membership} membership.")

    # {name, membership} = user4
    # IO.puts("#{name} has a #{membership} membership.")

    # {name, membership} = user5
    # IO.puts("#{name} has a #{membership} membership.")

    # <<<<<<<<<<<<<<<< map / mapping>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    # memberships = %{
    #   gold: :gold,
    #   silver: :silver,
    #   bronze: :bronze,
    #   none: :none,
    # }

    # prices = %{
    #   gold: 25,
    #   silver: 20,
    #   bronze: 15,
    #   none: 0,
    # }

    # users = [
    #   {"Moses", memberships.gold},
    #   {"Okiki", memberships.silver},
    #   {"Ismail", memberships.bronze},
    # ]

    # # Enum.each(users, fn{name, membership} -> IO.puts("#{name} has a #{membership} membership.") end)
    # Enum.each(users, fn{name, membership} -> IO.puts("#{name} has a #{membership} membership paying #{prices[membership]}.") end)


    # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< struct >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    # gold_membership = %Membership{type: :gold, price: 25}
    # silver_membership = %Membership{type: :silver, price: 20}
    # bronze_membership = %Membership{type: :bronze, price: 15}
    # none_membership = %Membership{type: :none, price: 0}

    # users = [
    #   %User{name: "Moses", membership: gold_membership},
    #   %User{name: "Okiki", membership: silver_membership},
    #   %User{name: "Ismail", membership: bronze_membership},
    #   %User{name: "Zaddy", membership: none_membership},
    # ]

    # Enum.each(users, fn %User{name: name, membership: membership} -> IO.puts("#{name} has a #{membership.type} membership paying #{membership.price}.") end)



    # # <<<<<<<<<<<<<<<<<<<<<<< Guessing Game >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # correct = :rand.uniform(11) - 1
    # IO.puts(correct)
    # guess = IO.gets("Guess a number btw 0 and 10: ") |> String.trim() |> Integer.parse()
    # IO.inspect(guess)
    # # IO.puts("You guessed #{guess}, correct was #{correct}")
    # # if guess == correct do
    # #   IO.puts("You Win")
    # # else
    # #   IO.puts("You lose!")
    # #  end

    # case guess do
    #   {result, _} ->
    #     IO.puts("parse successfully #{result}")
    #     if result === correct do
    #       IO.puts("You win")
    #     else
    #       IO.puts("You lose")
    #     end

    #   :error ->
    #     IO.puts("Something went wrong")
    # end



    # # <<<<<<<<<<<<<<<<<<<<<<<<<<<<< List/List Comprehension >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # grades = [25, 50, 75, 100]
    # new = for n <- grades, do: n + 5
    # # IO.puts(new)
    # IO.inspect(new)
    # new = new ++ [125]
    # new = new ++ [150, 175]
    # final = [5 | new]
    # # IO.inspect(new)
    # IO.inspect(final)
    # # even = for n <- final, rem(n, 2) == 0, do: n
    # even = for n <- final, Integer.is_even(n), do: n

    # IO.inspect(even)

    # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Higher Order Function >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    # numbers = [1,2,3,4,5]
    # Enum.each(numbers, fn num -> IO.puts(num) end)

    numbers = get_numbers_from_user()
    # result = Enum.map(numbers, &String.to_integer/1)
    # IO.inspect(result)         
    # new_result = [6 | result]
    # IO.inspect(new_result)
    print_numbers(numbers)
    IO.inspect(sum_and_average(numbers))
    {sum, average} = sum_and_average(numbers)
    IO.puts("Sum: #{sum}, average: #{average}")
  end
end
