local myMod = {}
function myMod.WelcomeMaster()
    local time = os.date("*t")
    print("Welcome my master ".."you just joined at: \n")
    print(("%02d:%02d:%02d"):format(time.hour, time.min, time.sec))
end


return myMod