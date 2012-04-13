# Forever alone
#
# Gym class gets picked last
# Displays 'forever alone' meme when there's only one user in the channel (+ hubot)
#

memes = [
  "http://i0.kym-cdn.com/entries/icons/original/000/003/619/Untitled-1.jpg"
]

userCount = 0

module.exports = (robot) ->

  robot.enter (msg) -> 
    userCount++
  
  robot.leave (msg) ->
    # Minimum is 1 (hubot alone in the room)
    if userCount > 1
      userCount--
      
    # It's only you and me
    if userCount == 2
      # Troll
      msg.send 'Forever alone'
      msg.send msg.random memes
