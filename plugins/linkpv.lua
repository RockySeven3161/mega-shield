do

function run(msg, matches)
       if not is_momod(msg) then
        return "For Higher Ranks"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "First type /newlink !"
       end
         local text = "Group Link :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text, ok_cb, false)
           return "Link Has Been Sent To Your Pv."
end

return {
  patterns = {
    "^[/#!]linkpv$"
    "^([Ll]inkpv)$"
  },
  run = run
}

end
