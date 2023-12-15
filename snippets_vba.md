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
    f_StringToDate = DateSerial(Left(yourString, 4), Mid(yourString, 5, 2), Mid(yourString, 7, 2))
End Function

Sub Main()
    Console.WriteLine(f_StringToDate("20220322083955"))
    'Output: 3/22/2022 12:00:00 AM
End Sub
```

## String to Timestamp
```vbscript
Function f_StringToDate(yourString as String) as Date 
    f_StringToDate = DateSerial(Left(yourString, 4), Mid(yourString, 5, 2), Mid(yourString, 7, 2)) + TimeSerial(Mid(yourString, 9, 2), Mid(yourString, 11, 2), Mid(yourString, 13, 2))
End Function

Sub Main()
    Console.WriteLine(f_StringToDate("20220322083955"))
    'Output: 3/22/2022 08:39:55 AM
End Sub
```

## Date to String
```vbscript
Function f_DateToString(yourDate as Date) as String 
    f_DateToString = Format(yourDate, "yyyyMMdd" & "hhmmss")
End Function

Sub Main()
    Console.WriteLine(f_DateToString(now()))
    'Output: 20220322083955 (2022-03-22 08:39:55)
End Sub
```
