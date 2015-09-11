Battleships
-----------
-----------
Introduction
------------
Maker Academy week 2 challenge. More advanced OOD with the game Battleships!

I'm using the MVP(minimal viable product) process to work through this challenge.

The different levels will be related too as pictured below:

![mvp](https://camo.githubusercontent.com/9cacfaf15e6f60c1622e230e21fa7a566ebf8995/68747470733a2f2f7062732e7477696d672e636f6d2f6d656469612f42796a41617a654345414d4b6730512e706e67 (115KB)

)

User Stories
------------
​```As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So that I can create a layout of ships to fox my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponents board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like an overview of my hits and misses so far

<!-- As a player
So that I can play against a human opponent
I would like to play a two-player game -->
```​

###Board
 <!-- 'can have a ship' -->

 <!-- 'can receive a hit on ship' -->

 'reports hit when ship at position'

 'reports missed hit when no ship at position'

 'can report if all ships sunk'

 'can report if there are still ships'

###Player
 <!-- 'can place ships' -->

 <!-- 'has hits overview'

 'has missed overview' -->

 <!-- 'tells us when a ship is hit'

 'tell us when ship is missed' -->

 <!-- 'will lose if all ships are sunk' -->

###Ship
 <!-- 'has a position when created' -->

 <!-- 'can be hit or missed' -->

 <!-- 'will record number of hits'

 'won't recored hit if missed' -->

 <!-- 'can be sunk'

 'is not sunk initially' -->


Developement/Feedback
---------------------
Composition
------------
​```
require 'ship'

module Ships

  attr_reader :position, :hits, :direction

  def initialize(position, direction)
    @direction = direction
    @position = position
    @hits = 0
  end

  def hit(position)
    return :missed if position != @position
    return add_hit if position == @position
  end

  def sunk?
    @hits >= @size
  end

  def add_hit
    @hits =+ 1
    :hit
  end
end

class Destroyer
include Ships
  def initialize(position, direction)
    @size = 3
    super(position, direction)
  end
end


class Submarine
include Ships
  def initialize(position, direction)
  @size = 4
  super(position, direction)
  end
end
```​

Author
---------
Daniel St Paul

Daniel St Paul [11:21 AM]
Battleships
-----------
-----------
Introduction
------------
Maker Academy week 2 challenge. More advanced OOD with the game Battleships!

I'm using the MVP(minimal viable product) process to work through this challenge.

The different levels will be related too as pictured below:

![mvp](https://camo.githubusercontent.com/9cacfaf15e6f60c1622e230e21fa7a566ebf8995/68747470733a2f2f7062732e7477696d672e636f6d2f6d656469612f42796a41617a654345414d4b6730512e706e67)

User Stories
------------
​```As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So that I can create a layout of ships to fox my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponents board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like an overview of my hits and misses so far

<!-- As a player
So that I can play against a human opponent
I would like to play a two-player game -->
```​

###Board
 <!-- 'can have a ship' -->

 <!-- 'can receive a hit on ship' -->


###Player
 <!-- 'can place ships' -->

 <!-- 'will return error for overlapping positions' -->

 <!-- 'has hits overview'

 'has missed overview' -->

 <!-- 'tells us when a ship is hit'

 'tell us when ship is missed' -->

 <!-- 'will lose if all ships are sunk' -->

###Ship
 <!-- 'has a position when created' -->

 <!-- 'can be hit or missed' -->

 <!-- 'will record number of hits'

 'won't recored hit if missed' -->

 <!-- 'can be sunk'

 'is not sunk initially' -->


Developement/Feedback
---------------------
Composition
------------
​```
require 'ship'

module Ships

  attr_reader :position, :hits, :direction

  def initialize(position, direction)
    @direction = direction
    @position = position
    @hits = 0
  end

  def hit(position)
    return :missed if position != @position
    return add_hit if position == @position
  end

  def sunk?
    @hits >= @size
  end

  def add_hit
    @hits =+ 1
    :hit
  end
end

class Destroyer
include Ships
  def initialize(position, direction)
    @size = 3
    super(position, direction)
  end
end


class Submarine
include Ships
  def initialize(position, direction)
  @size = 4
  super(position, direction)
  end
end
```​
