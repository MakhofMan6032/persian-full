do

function run(msg, matches)
local reply_id = msg['id']
local text = [[
👤 Social Commands :

!git (یوزرنیم)
دریافت اطلاعات یک یوزرنیم در گیت هاب

!google
سرچ کردن در گوگل

!aparat متن
سرچ کردن یک متن در آپارات

!praytime (شهر)
دریافت وقت اذان یک شهر

!gif متن
سرچ کردن یک متن و دریافت به صورت گیف

!gps (شهر) (کشور)
دریافت مکان مورد نظر از گوگل

!insta (یوزرنیم اینستا)
سرچ کردن یک یوزرنیم در اینستاگرام

!tosticker
تبدیل کردن عکس به استیکر توسط ریپلی

!tophoto
تبدیل استیکر به عکس توسط ریپلی 

!qr
دریافت هر چیزی به صورت بارکد

!file (متن) (نام فایل.فرمت فایل)
دریافت یک نوشته به صورت فایل با فرمت دلخواه

!wikifa (متن)
جستجوی یک متن در ویکی پدیا 

!calc 4-2
انجام محاسبات ریاضی 

!time (نام شهر)
دریافت زمان یک شهر 

!weather (نام شهر)
دریافت وضعیت آب و هوای یک شهر

!sticker متن
تبدیل متن به استیکر

!vc متن
دریافت متن به صورت صدا

!nerkh
دریافت قیمت گروها

!vote عددی زیر 10
امتیاز دادن به ربات

!arz
دریافت قیمت ارز

!know
دریافت دانستنی

!join (آیدی گروه)
عضو شدن در گروه

!social
دریافت لیست دستورات تفریحی

!help
دریافت لیست دستورات مخصوص گروه
]]
if matches[1] == 'socialhelp' and if matches[1] == 'social' then
    if is_momod(msg) then
reply_msg(reply_id, text, ok_cb, false)
   if not is_momod(msg) then
return 'فقط مخصوص مدیران می باشد'
end
end 
end
return {
patterns = {
    "^[!/#](socialhelp)$",
    "^[!/#](social)$",
},
run = run
}

end
