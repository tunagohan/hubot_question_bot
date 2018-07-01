fs = require('fs')
module.exports = (robot) ->
  robot.respond /--help/i, (msg) ->
    msg.send '私は質問botです。\n使い方は以下の通り。\n【質問するとき】\n@question_bot question ●●について分からない。\n【Botからの応答】\n@user さんから 「●●について分からない。」との質問がありました\n'
  robot.respond /question /i, (msg) ->
    username = msg.message.user.name
    text = msg.message.text.replace(/[question_bot question ]*/, "")
    msg.send "************************************************\n@#{username} さんから \n「#{text}」\nとの質問がありました！\n************************************************"
