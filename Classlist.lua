local Array = {}

function Array.Map(table, callback)
    local NewArray = {}
    for index, value in pairs(table) do
      local element = value
      value = callback(element, index)
    end

    return NewArray
end

function Array.TableToString(table)
    assert(type(table) == "table", string.format("This argument no is a table or list values.", table))
    assert(#table > 0, string.format("This table not contain values.", table))

    local function convert_string(value, index, iden)
      iden = iden or 0;
      local rp = string.rep;
      local fm = string.format;
      local toString = rp(" ", iden)

      if index then
        local RegExp = type(index) == "string" and '["%s"] = ' or '[%s] = '
        toString = toString..fm(RegExp, index)
      end

      if type(value) == "string" then
        toString = toString..fm('%q', value)
      elseif type(value) == "number" then
        toString = toString..tostring(value)
      elseif type(value) == "boolean" then
        toString = toString..tostring(value)
      elseif type(value) == "table" then
        if #value > 0 then
          toString = toString.."{\n"

          for i, v in pairs(value) do
            toString = toString..convert_string(v, i, iden + 4) .. ",\n"
          end

          toString = toString..rp(" ", iden).."}"
        else
          toString = toString.."{}"
        end
      else
        toString = toString..typeof(value)
      end

      return toString
    end

    local parse = convert_string(table) print(parse)
    return parse
end

getgenv().PrintArray = Array.TableToString

return Array
