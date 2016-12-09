--lock english
local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['english'] then
                lock_english = data[tostring(msg.to.id)]['settings']['english']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_english == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
--lock emoji
local function run(msg)
    local data = load_data(_config.moderation.data)
     if data[tostring(msg.to.id)]['settings']['emoji'] == 'yes' then
if not is_momod(msg) then
 delete_msg(msg.id, ok_cb, true)
end
end
end
--lock username
local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['username'] then
                username = data[tostring(msg.to.id)]['settings']['username']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if username == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
--lock tag
local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['tag'] then
                lock_tag = data[tostring(msg.to.id)]['settings']['tag']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_tag == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
--lock reply
do
local function pre_process(msg)
    local hash = 'muter:'..msg.to.id
    if redis:get(hash) and msg.reply_id and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg) then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end
    
local function run(msg, matches)
    chat_id =  msg.to.id
    if is_momod(msg) and matches[1] == 'lock' then
                    local hash = 'muter:'..msg.to.id
                    redis:set(hash, true)
                    return "reply has been locked"
  elseif is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'muter:'..msg.to.id
                    redis:del(hash)
                    return "reply has been unlocked"
end
end
 --lock operator
  local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['operator'] then
                lock_operator = data[tostring(msg.to.id)]['settings']['operator']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_operator == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
  --lock media
  local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['media'] then
                lock_media = data[tostring(msg.to.id)]['settings']['media']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_media == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
  --lock join
  local function run (msg, matches)
local data = load_data(_config.moderation.data)
   if matches[1] == 'chat_add_user_link' then
        local user_id = msg.from.id
        if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
        if data[tostring(msg.to.id)]['settings']['join'] == 'yes' then
      kick_user(user_id, msg.to.id)
    end
   end
end   
 end
 end
--lock fwd
  do
local function pre_process(msg)
    local hash = 'mutef:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end
    
local function run(msg, matches)
    chat_id =  msg.to.id
    if is_momod(msg) and matches[1] == 'lock' then
                    local hash = 'mutef:'..msg.to.id
                    redis:set(hash, true)
                    return "forward has been locked"
  elseif is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'mutef:'..msg.to.id
                    redis:del(hash)
                    return "forward has been unlocked"
end
end
--lock fosh
    local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end

 
return {
  patterns = {
        
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "kir",
	"kos",
	"گوساله",
	"gosale",
	"gusale",
  '^[/!#](lock) fwd$',
  '^[/!#](unlock) fwd$',       
     "شارژ",
  "ایرانسل",
  "irancell",
  "ir-mci",
  "همراه اول",
  "رایتل",
  "تالیا",
         '^[/!#](lock) reply$',
        '^[/!#](unlock) reply$',
        '^([Ll]ock) reply$',
        '^([Uu]nlock) reply$',
     "#",
        "@",
        "😞(.+)",
 "😞",
 "😐(.+)",
 "😐",
 "🙁(.+)",
 "🙁",
 "🌝(.+)",
 "🌝",
 "🤖(.+)",
 "🤖",
 "😲(.+)",
 "😲",
 "💋(.+)",
 "💋",
 "🙄(.+)",
 "🙄",
 "🤗(.+)",
 "🤗",
 "😱(.+)",
 "😱",
 "🤐(.+)",
 "🤐",
 "💩(.+)",
 "💩",
 "🌹(.+)",
 "🌹",
 "🖐(.+)",
 "🖐",
 "❤️(.+)",
 "❤️",
 "💗(.+)",
 "💗",
 "🤔(.+)",
 "🤔",
 "😖(.+)",
 "😖",
 "☹️(.+)",
 "☹️",
 "😔(.+)",
 "😔",
 "👾(.+)",
 "👾",
 "🚀(.+)",
 "🚀",
 "🌎🌍(.+)",
 "🌍",
 "🍦",
 "😸(.+)",
 "😺",
 "😯(.+)",
 "😯",
 "🤒(.+)",
 "🤒",
 "😷(.+)",
 "😷",
 "🙀(.+)",
 "🙀",
 "🎪(.+)",
 "🌚",
 "🌚(.+)",
 "😂",
 "😂(.+)",
 "😳",
 "😳(.+)",
 "😛",
 "😛(.+)",
 "😢",
 "😢(.+)",
 "😓",
 "😓(.+)",
 "😾",
 "😾(.+)",
 "👊🏻",
 "👊🏻(.+)",
 "✊🏻",
 "✊🏻(.+)",
 "👿",
 "👿(.+)",
 "👅",
 "👅(.+)",
 "🖕🏿",
 "🖕🏿(.+)",
 "😲",
 "😲(.+)",
 "👹",
 "👹(.+)",
 "😴",
 "😴(.+)",
 "☂",
 "☂(.+)",
 "🗣",
 "🗣(.+)",
 "⛄️",
 "⛄️(.+)",
 "😻",
 "😻(.+)",
"😀(.+)",
 "😀",
 "😬(.+)",
 "😬",
 "😁(.+)",
 "😁",
 "😂(.+)",
 "😂",
 "😃(.+)",
 "😃",
 "😄(.+)",
 "😄",
 "😅",
 "😆(.+)",
 "😆",
 "😇(.+)",
 "😇",
 "😉(.+)",
 "😉",
 "😊(.+)",
 "😊",
 "🙂(.+)",
 "🙂",
 "🙃(.+)",
 "🙃",
 "☺️(.+)",
 "☺️",
 "😋(.+)",
 "😋",
 "😌",
 "😍(.+)",
 "😍",
 "😘(.+)",
 "😘",
 "😗(.+)",
 "😗",
 "😙(.+)",
 "😙",
 "😚(.+)",
 "😚",
 "😜(.+)",
 "😜",
 "😝(.+)",
 "😝",
 "🤑(.+)",
 "🤑",
 "🤓(.+)",
 "🤓",
 "😎(.+)",
 "😎",
 "🤗(.+)",
 "🤗",
 "😏(.+)",
 "😏",
 "😶(.+)",
 "😶",
 "😺(.+)",
 "😺",
 "😹",
 "😼",
 "😿",
 "🌝",
 "🌚",
 "🌶",
 "🖐🏼",
"[Aa](.*)",
"[Bb](.*)",
"[Cc](.*)",
"[Dd](.*)",
"[Ee](.*)",
"[Ff](.*)",
"[Gg](.*)",
"[Hh](.*)",
"[Ii](.*)",
"[Jj](.*)",
"[Kk](.*)",
"[Ll](.*)",
"[Mm](.*)",
"[Nn](.*)",
"[Oo](.*)",
"[Pp](.*)",
"[Qq](.*)",
"[Rr](.*)",
"[Ss](.*)",
"[Tt](.*)",
"[Uu](.*)",
"[Vv](.*)",
"[Ww](.*)",
"[Xx](.*)",
"[Yy](.*)",
"[Zz](.*)",
  "%[(photo)%]",
  "%[(document)%]",
  "%[(video)%]",
  "%[(audio)%]",
  "%[(unsupported)%]",
  "%[(gif)%]",
  "^!!tgservice (chat_add_user_link)$",
        
      },
  run = run
  pre_process = pre_process
}
 
