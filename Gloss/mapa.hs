module Main where 

import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

data OpçãoDoMenu = MenuJogar | MenuSair 
data Estado = Menu OpçãoDoMenu 
             |Jogo 


{-
estadoInicial:: Estado 
estadoInicial = (0,0)

desenhaEstado:: Estado -> Picture 
desenhaEstado (x,y) = Translate x y poligono 
    where 
        poligono:: Picture
        poligono = Polygon [(0,0),(10,0),(10,10),(0,10),(0,0)]

reageTempo:: Float -> Estado -> Estado 
reageTempo n (x,y) = (x,y-0.3) 

fr :: Int 
fr = 50

dm :: Display 
dm = InWindow "Novo Jogo" (400,400) (0,0)
-}




window::Display 
window = FullScreen 

background::Color 
background = greyN 0.8

fr::Int 
fr = 50 

estadoInicial:: Estado 
estadoInicial = 

desenhaEstado::Estado -> Picture 
desenhaEstado (x,y) = Translate x y poligonoMenuJogar =  display FullScreen (greyN 0.8) (polygon [(-250,200),(0,200),(0,-200),(-250,-200),(-250,200Path)]) 
    where 
        poligono::Picture 
        poligono = Polygon [(-500,100),(-400,0),(-500,-100),(-500,100)] 

reageEvento :: Event -> Estado -> Estado
reageEvento (EventKey (SpecialKey KeyUp) Down _ _) MenuJogar    = MenuJogar
reageEvento (EventKey (SpecialKey KeyDown) Down _ _) MenuJogar  = MenuSair 
reageEvento _ s = s 

reageTempo :: Float -> Estado -> Estado
reageTempo n (x,y) = (x,y)

main :: IO ()
main = play window background fr
       estadoInicial desenhaEstado reageEvento reageTempo 