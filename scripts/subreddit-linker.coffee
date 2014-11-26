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
  robot.hear /(^|\s)\/?r\/(\w+)($|\s)/i, (msg) ->
    subreddit = msg.match[2]
    msg.send "http://reddit.com/r/#{subreddit}"
