sub Init()
    'setting top interfaces
    m.top.Title = m.top.findNode("Title")
end sub

' Content change handler
' All fields population
sub OnContentchanged()
    item = m.top.content

    title = item.title.toStr()
    if title <> invalid then
        m.top.Title.text = title.toStr()
    end if
    

    

end sub