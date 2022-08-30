# INTRODUCCIÓN A LAS CLASES
A continuación se mostraran las distintas clases que existen en esta libreria.
Formas de instanciar el Framework:

Si usas el exploit Synapse X, la mejor forma de ejecutar al framework es llamando el módulo de protección.
            
```lua
local Framework = loadstring(game:HttpGet("https://raw.githubusercontent.com/DocsFoxr/Droid-Y/main/VersionAlternative.lua", true))();
local libreria = Framework.ModuleProtect('_K_SecureExploit', <string number> Watch ID) --default 'nil'
```

* El parametro de Watch ID, permitira colocar un valor
Caso contrario, puede ejecutar sin el módulo protección.

```lua
local libreria = Framework.Library:CreateUIMap(<string number> Watch ID) --default 'nil'
```

* Seguidamente en ambas formas, se tiene que instanciar un Sub Menu:
```lua
local Tab1 = libreria:addListNav(<string> title)
```

## Button
```lua
<method> addButton(<string>, <void>) <method>
```

* Ejemplo:
```lua
Tab1:addButton('Button', function()
   print('hi!!!')
end)
```



## Toggle
bool: true or false --toggle encendido o apagado;

```lua
<method> addToggle(<string>, <bool>, <void>) <method>
```

* Ejemplo:
```lua
Tab1:addToggle('Button', true, function()
   print('hi!!!')
end)
```

## Watch ID
Puedes cambiar el ID del Reloj, al crear la instancia.
* Ejemplo:
```lua
CreateUIMap(<string | number>)
```

## Module Protect
* El Module Protect, es un metodo que permite ejecutar la Interfaz en modo seguro, mejorando la seguridad de
la misma.

```lua
<method> ModuleProtect(<string> typekey, <string> Watch ID) <method>
```

### Content Types:
* **String:** _K_SecureExploit
* **number:** 265142984
