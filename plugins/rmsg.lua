local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Messages Has Been Deleted.', ok_cb, false)
  else
    send_msg(extra.chatid, 'Deleting Messags ...', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'clean' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "Limit is more than 1 ."
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "Just in supergroup"
    end
  else
    return "You are not alowed !"
  end
end

return {
    patterns = {
        '^[!/#](clean) msg (%d*)$'
    },
    run = run
}
