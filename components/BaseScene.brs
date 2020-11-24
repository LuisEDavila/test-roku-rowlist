sub init()
    m.rowlist1 = m.top.findNode("exampleRowList1")
    m.rowlist2 = m.top.findNode("exampleRowList2")

    m.rowlist1.content = CreateObject("roSGNode", "RowListContent")
    m.rowlist2.content = CreateObject("roSGNode", "RowListContent")

    m.rowlist1.setFocus(true)
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    if press
        if key = "up"
            m.rowlist1.setFocus(true)
            return true
        else if key = "down"
            m.rowlist2.setFocus(true)
            return true
        end if
    end if
    return false
end function