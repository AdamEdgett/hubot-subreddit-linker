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
  robot.hear /(^|\s)\/?((r|u)\/(\w+))($|\s)/i, (msg) ->
    urlPath = msg.match[2]
    msg.send "http://reddit.com/#{urlPath}"
