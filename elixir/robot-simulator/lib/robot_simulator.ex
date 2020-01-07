defmodule RobotSimulator do
  defguard is_valid_position(position) when is_tuple(position) and tuple_size(position) == 2
  @turnLeft %{
    :north => :west,
    :east => :north,
    :south => :east,
    :west => :south,
  }
  @turnRight %{
    :north => :east,
    :east => :south,
    :south => :west,
    :west => :north,
  }
  @step %{
    :north => {0, 1},
    :south => {0, -1},
    :east => {1, 0},
    :west => {-1, 0},
  }

  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec create(direction :: atom, position :: {integer, integer}) :: any
  def create(), do: create(:north, {0,0})
  def create(direction, position) when direction not in [:north, :south, :east, :west], do: {:error, "invalid direction"}
  def create(direction, {x,y}) when is_integer(x) and is_integer(y) , do: %{:direction => direction, :position =>{x,y}}
  def create(_, _), do: {:error, "invalid position"}

  @doc """
  Sum x and y coords
  """
  def sum({x,y}, {x1,y1}), do: {x+x1, y+y1}

  @doc """
  Move a robot in the appropriate direction

  Valid directions are `L`, `A`, `S`
  """
  @spec move(robot:: any, direction:: String):: any
  def move(robot, "R"), do: create(@turnRight[robot.direction], robot.position)
  def move(robot, "L"), do: create(@turnLeft[robot.direction], robot.position)
  def move(robot, "A"), do: create(robot.direction, sum(@step[robot.direction], robot.position))
  def move(_, _), do: {:error, "invalid instruction"}

  @doc """
  Simulate the robot's movement given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  @spec simulate(robot :: any, instructions :: String.t()) :: any
  def simulate(robot, ""), do: robot
  def simulate(robot, instructions) do
    if (length(String.split(instructions, ~r/[A|L|R]/iu, trim: true)) > 0) do
      {:error, "invalid instruction"}
    else
      [head | tail] = instructions |> String.split("", trim: true)
      simulate(move(robot, head), Enum.join(tail))
    end
  end

  @doc """
  Return the robot's direction.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec direction(robot :: any) :: atom
  def direction(robot) do
    robot[:direction]
  end

  @doc """
  Return the robot's position.
  """
  @spec position(robot :: any) :: {integer, integer}
  def position(robot) do
    robot[:position]
  end
end
