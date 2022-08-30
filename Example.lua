local Framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/DocsFoxr/Droid-Y/main/VersionAlternative.lua", true))();
                
local libreria = Framework.ModuleProtect('_K_SecureExploit');

local Tab1 = lib:addListNav('titleName')

Tab1:addButton('hola', function()
  print('hola')
end)

Tab1:addToggle('toggle', false, function(isToggle)
  if (isToggle) then
    print('Toggle prendido') 
  else	
    print('Toggle apagado')
  end
end)
