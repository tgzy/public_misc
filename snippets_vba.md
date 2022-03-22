---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# VBA

## String to Date
```vbscript
Function f_StringToDate(yourString as String) as Date 
    return DateSerial(Left(yourString, 4), Mid(yourString, 5, 2), Mid(yourString, 7, 2))
End Function

Sub Main()
    Console.WriteLine(f_StringToDate("20221022072749"))
End Sub
```

## Date to String
```
Function f_DateToString(yourDate as Date) as String 
    return Format(yourDate, "yyyymmdd" & "hhmmss")
End Function

Sub Main()
    Console.WriteLine(f_DateToString(now()))
End Sub
```
