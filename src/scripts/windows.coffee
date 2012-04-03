# Yet another BSOD
#
# windows - A problem has been detected and Windows has been shut down to prevent damage to your computer.
#

bsods = [
    "http://upload.wikimedia.org/wikipedia/commons/0/0e/Windows_XP_Blue_Screen_of_Death_%28PAGE_FAULT_IN_NONPAGED_AREA%29.svg"
  , "http://images2.wikia.nocookie.net/__cb20100730010739/inciclopedia/images/7/78/Bsod.jpg"
  , "http://regeditexe.files.wordpress.com/2008/01/bill-gates-bsod.jpg"
  , "http://www.vanheusden.com/bsod/bsod-full.png"
]

module.exports = (robot) ->
  robot.hear /.*windows.*/i, (msg) ->
    msg.send "A problem has been detected and Windows has been shut down to prevent damage to your computer."
    msg.send msg.random bsods
