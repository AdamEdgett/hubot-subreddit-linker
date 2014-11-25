# Description:
#   Replies to subreddit references with full links
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
# AdamEdgett

module.exports = (robot) ->
  robot.hear /\/(\w+)/i, (msg) ->
    subreddit = msg.match[1]
    msg.send "http://reddit.com/r/#{subreddit}"
