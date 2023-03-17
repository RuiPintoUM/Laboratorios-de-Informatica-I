module Tarefa3_2021li1g063_Spec where

import Test.HUnit
import Tarefa3_2021li1g063
import Fixtures

testsT3 =
  test
    [ "Tarefa 3 - Teste Imprime Jogo m1e1" ~: "      <\n      X\n      X\nP   C X\nXXXXXXX" ~=?  show m1e1
    , "Tarefa 3 - Teste Imprime Jogo m1e2" ~: "       \n      X\n      X\nP < C X\nXXXXXXX" ~=?  show m1e2
    , "Tarefa 3 - Teste Imprime Jogo jogadorCaixa" ~: "      X\n   C  X\nP  >C X\nXXXXXXX" ~=?  show jogadorCaixa
    ]                                        