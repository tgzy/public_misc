---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# C

## Sum and Product
```C
using System;
					
public class Program
{
	public static void Main()
	{
		int sum = 1;
		for(int n=1; n<=4; n++){
			sum += 3+n;
			System.Console.WriteLine("Sum is {0}", sum);
		}
		
		int product = 1;
		for(int n=1; n<=4; n++){
			product *= 3*n;
			System.Console.WriteLine("Product is {0}", product);
		}
	}
}
```
