module Main where

import Lib

data Warrior = Warrior Coordinates
data Size = Height Width
type Warriors = [Warrior]
type Height = Int
type Width = Int
data Coordinates = Height Widthgi

red1 :: Warrior
red1 = Warrior Coordinates 1 1

red2 :: Warrior
red2 = Warrior Coordinates 1 2

red3 :: Warrior
red3 = Warrior Coordinates 1 3

red4 :: Warrior
red4 = Warrior Coordinates 1 4

blue1 :: Warrior
blue1 = Warrior Coordinates 4 1

blue2 :: Warrior
blue2 = Warrior Coordinates 4 2

blue3 :: Warrior
blue3 = Warrior Coordinates 4 3

blue4 :: Warrior
blue4 = Warrior Coordinates 4 4

redTeam :: Warriors
redTeam = [red1, red2, red3, red4]

blueTeam :: Warriors
blueTeam = [blue1, blue2, blue3, blue4]

moveWith :: String -> Int -> Warrior
moveWith name n = 
    if name == "red" 
        then redTeam !! n 
        else blueTeam !! n

getTeam :: String -> Warriors
getTeam name =
    if name == "red"
        then redTeam
        else blueTeam

moveWhere :: Warrior -> Coordinates -> Warrior
moveWhere warrior coordinates = Warrior coordinates

move :: moveWith -> moveWhere -> String
move name n coords = if elem warriorMove getTeam name
    then "GOTCHA"
    else "MISS" 
    where warrior = moveWith name n
        warriorMove = moveWhere warrior coords


main :: IO ()
main = putStrLn move "red" 1 (4, 4)
