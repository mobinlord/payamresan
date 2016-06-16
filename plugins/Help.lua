local triggers = {
	'^/help[@'..bot.username..']*',
	'^/start[@'..bot.username..']*'
}

local action = function(msg)
    if string.match(msg.text, '^/help') then
    local text = ''
    if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
        text = text..'*WELCOME TO EMC PV!*\n[EMC](telegram.me/EMCTG)\n_Send Pm With_\n/`/a YourPm!`\n'  --You Can Replace WELCOME TO EMC PV!

        sendReply(msg, 'I\'ve send you the requested information in private.\nIf you have never used me before, please start a conversation with me and ask for help here again.')
    end
    
    if msg.chat.type == 'private' then
        text = text..'*WELCOME TO ARMAN EMCPV!*\n[EMC](telegram.me/EMCTG)\n_Send Pm With_\n`/a YourPm!`\n' --You Can Replace WELCOME TO ARMAN PV!
    end
    sendMessage(msg.from.id, text, true, false, true)
end

return {
	action = action,
	triggers = triggers
}
end
