# OH, YEAAHH!
# As seen in Family Guy http://www.youtube.com/watch?v=bxZASSqP0h4
#
# oh, yeah! - The Kool-Aid Guy makes an impromptu appearance
#

koolaids = [
    "http://3.bp.blogspot.com/-iS6wInh2Ji4/TWAE0Gm09EI/AAAAAAAAAA8/N6vAfImIO8Q/s1600/koolaid.jpg"
  , "http://paxus.files.wordpress.com/2012/03/kool-aid-steve-jobs.jpg"
  , "http://chzmemebase.files.wordpress.com/2011/01/memes-rage-guy-bricks.jpg"
  , "http://www.youtube.com/watch?v=nv5fYWy3H9Q"
  , "http://www.youtube.com/watch?v=bxZASSqP0h4"
]

module.exports = (robot) ->
  robot.hear /.*(aw+|oh+),*\s+(y+e+a+h+|n+o+)!*.*/i, (msg) ->
    msg.send msg.random koolaids
