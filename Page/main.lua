local p = {}

function p.main(frame)
    local args = frame:getParent().args

    local name = args.name or "Unknown Extension"
    local version = args.version or "Unspecified"
    local author = args.author or "Unknown"

    return string.format([[
{| class="wikitable"
! Extension
| %s
|-
! Version
| %s
|-
! Author
| %s
|}
]], name, version, author)
end

return p
