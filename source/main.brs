
 sub RunUserInterface()
    screen = CreateObject("roSGScreen")
    scene = screen.CreateScene("HomeScene")
    port = CreateObject("roMessagePort")
    input = CreateObject("roInput")
    input.setMessagePort(port)
    screen.Show()

    oneRow1 = GetApiArray1()
    oneRow2 = GetApiArray2()
    oneRow3 = GetApiArray3()
    oneRow4 = GetApiArray4()
    oneRow5 = GetApiArray5()
    oneRow6 = GetApiArray6()


    list = [
        {
            Title:"Actualidad"
            ContentList : oneRow1
        }
        {
            Title:"Noticias"
            ContentList : oneRow2
        }
        {
            Title:"Informa TVX"
            ContentList : oneRow3
        }

        {
            Title:"Encuentro con Julio Villagran"
            ContentList : oneRow4
        }
        {
            Title:"Plataforma"
            ContentList : oneRow5
        }  
        {
            Title:"Pop TVX"
            ContentList : oneRow6
        }                                                                                       
    ]
    scene.gridContent = ParseXMLContent(list)

    while(true)
        msg = port.GetMessage()
        msgType = type(msg)
        if msgType = "roInputEvent"
            info = msg.getInfo()
            handleDeepLink(info)
        end if
    end while
    
    if screen <> invalid then
        screen.Close()
        screen = invalid
    end if
end sub



Function ParseXMLContent(list As Object)
      Parent = createObject("RoSGNode", "ContentNode")


    for each rowAA in list
        row = createObject("RoSGNode","ContentNode")
        row.Title = rowAA.Title


        for each itemAA in rowAA.ContentList

            Playlist = createObject("RoSGNode", "ContentNode")
            for each key in itemAA
                Playlist[key] = itemAA[key]
            end for
            row.appendChild(Playlist)

        end for
        Parent.appendChild(row)
    end for

    return Parent
End Function


Function GetApiArray1()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed323.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function


Function GetApiArray2()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed536.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function

Function GetApiArray3()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed88.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function

Function GetApiArray4()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed2.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function

Function GetApiArray5()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed3.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function

Function GetApiArray6()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("http://bucketeer-c970a6d1-f419-4561-b5d3-03be633a5c0c.s3.amazonaws.com/public/feed22.xml")
    rsp = url.GetToString()

    responseXML = ParseXML(rsp)
    responseXML = responseXML.GetChildElements()
    responseArray = responseXML.GetChildElements()

    result = []

    for each xmlItem in responseArray
        if xmlItem.getName() = "item"
            itemAA = xmlItem.GetChildElements()
            if itemAA <> invalid
                item = {}
                for each xmlItem in itemAA
                    item[xmlItem.getName()] = xmlItem.getText()
                    if xmlItem.getName() = "media:content"
                        item.stream = {url : xmlItem.url}
                        item.url = xmlItem.getAttributes().url
                        item.streamFormat = "mp4"
                        
                        mediaContent = xmlItem.GetChildElements()
                        for each mediaContentItem in mediaContent
                            if mediaContentItem.getName() = "media:thumbnail"
                                item.HDPosterUrl = mediaContentItem.getattributes().url
                                item.hdBackgroundImageUrl = mediaContentItem.getattributes().url
                            end if
                        end for
                    end if
                end for
                result.push(item)
            end if
        end if
    end for

    return result
End Function

Function ParseXML(str As String) As dynamic
    if str = invalid return invalid
    xml = CreateObject("roXMLElement")
    if not xml.Parse(str) return invalid
    return xml
End Function