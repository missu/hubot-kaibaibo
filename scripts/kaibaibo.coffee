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

timer = [0,1,2,3]
choice = ['Rock', 'Paper', 'Scissors']

module.exports = (robot) ->
  robot.respond /kaibaibo/i, (msg) ->
     index = 3
     msg.send "Okay"
     intervalID = setInterval ->
                      if index > 0
                      	msg.send timer[index]
                      	index--
                      else
                        clearInterval intervalID
                        msg.send msg.random choice
                  , 1000
    
