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


 module.export = (robot) ->
   robot.hear /kaibaibo/i, (msg) ->
     msg.send "Okay"