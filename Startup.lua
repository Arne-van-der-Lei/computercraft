label = os.getComputerLabel()

function download(url, file)
    local content = http.get("http://raw.githubusercontent.com/Arne-van-der-Lei/computercraft/master/" .. url).readAll()
    if not content then
      error("Could not connect to website")
    end
    f = fs.open(file, "w")
    f.write(content)
    f.close()
end

download(label.."/Main.lua","Main.lua")

shell.run("Main.lua")