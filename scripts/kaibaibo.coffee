# Description
#   Play rock paper scissors with hubot
#
# Dependencies:
#   none
#
# Commands:
#   hubot kaibaibo - hubot counts down before choosing an option
#
# Author:
#   missu

 timer = [3,2,1]
 choice = [Rock, Paper, Scissors]

 module.export = (robot) ->
   robot.hear /kaibaibo/i, (msg) ->
       msg.send "Okay"
       intervalID = setinterval ->
                     index = 2
                     msg.send timer[index]
                     if index == 0
                        clearInterval intervalID
                        msg.send msg.random choice
                    , 1000
    return
