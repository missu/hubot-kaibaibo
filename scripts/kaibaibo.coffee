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

timer = [1,2,3]
choice = ['Rock', 'Paper', 'Scissors']

module.exports = (robot) ->
  robot.respond /kaibaibo/i, (msg) ->
     index = 2
     msg.send "Okay"
     intervalID = setInterval ->
                      msg.send timer[index]
                      if index == 0
                        clearInterval intervalID
                        msg.send msg.random choice
                      index--
                  , 1000
    
