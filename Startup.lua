label = os.getComputerLabel()

files = {
    ["TownCrafter"] = {"Main.lua","Recepies.lua"}
}


function download(url, file)
    local content = http.get("http://raw.githubusercontent.com/Arne-van-der-Lei/computercraft/master/" .. url).readAll()
    if not content then
      error("Could not connect to website")
    end
    if fs.exists(file) == true then
        fs.delete(file)
    end
    f = fs.open(file, "w")
    f.write(content)
    f.close()
end

for key, value in pairs(files[label]) do
    download(label.."/"..value,value)
end

shell.run("Main.lua")