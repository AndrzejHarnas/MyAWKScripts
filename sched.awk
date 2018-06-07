BEGIN {
oldtime="0"
m[0]="'---'";
m[1]="'JAN'";
m[2]="'FEB'";
m[3]="'MAR'";
m[4]="'APR'";
m[5]="'MAY'";
m[6]="'JUN'";
m[7]="'JUL'";
m[8]="'AUG'";
m[9]="'SEP'";
m[10]="'OCT'";
m[11]="'NOV'";
m[12]="'DEC'";
}
{
if(NR>1) 
	{
	time=$6;	
	qg=$7;
	qw=$8;
	
    if(time!=oldtime) {  
      printf("/\n\n");    
	  printf("DATES\n");		  
#      printf(" %2d %5s %d %8s /\n",day,m[month],year,hour "01"); # domknięcie starej daty	  	  	  
      day = $2;
	  month = $3;
      year = $4;	
	  hour = $5;
      printf(" %2d %5s %d %8s /\n",day,m[month],year,hour "00"); # ustawienie nowej daty  	  
      printf("/\n\n");
	  
      printf("WCONHIST\n");	   	  
         printf(" %5s %7s %7s %6s %10.5f %10.2f %3s %3s %3s  %4.1f /\n","K1-K","OPEN","WRAT","0.00",qw,qg,"1*","1*","1*","1*");  

	}  
	  
    else if(time==oldtime) { 	 	
         printf(" %5s %7s %7s %6s %10.5f %10.2f %3s %3s %3s  %3s /\n","K1-K","OPEN","WRAT","0.00",qw,qg,"1*","1*","1*","1*");
     } 

	 oldtime = time;
	 
    }
}	
END {
}
