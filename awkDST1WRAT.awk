BEGIN{}
{
if($1=="2013-05-03") {
DATA="03 'MAY' 2013"
}

if($1=="2013-05-04") {
DATA="04 'MAY' 2013"
}

if($1=="2013-05-05") {
DATA="05 'MAY' 2013"
}

if($1=="2014-03-05") {
DATA="05 'MAR' 2014"
}

if($1=="2014-03-06") {
DATA="06 'MAR' 2014"
}

if($1=="2014-03-07") {
DATA="07 'MAR' 2014"
}

if($1=="2014-10-19") {
DATA="19 'OCT' 2014"
}

if($1=="2014-10-20") {
DATA="20 'OCT' 2014"
}

if($1=="2014-03-16") {
DATA="16 'MAR' 2014"
}

if($1=="2014-03-17") {
DATA="17 'MAR' 2014"
}

if($1=="2014-03-18") {
DATA="18 'MAR' 2014"
}

if($1=="2014-09-23") {
DATA="23 'SEP' 2014"
}

if(NR==1) {

printf("WCONINJH \n");

  
printf(" 'B8-Z5Bis'   'WAT' 'OPEN'  %s / \n/ \n", $3 );
printf("DATES \n" );  
printf("%s %s / \n", DATA, $2 );  


}


if(NR>2) {

czas = $2;
s=substr(czas, 7, 2);
m=substr(czas, 4, 2);
g=substr(czas, 1, 2);

if(s == "00") {
	if(m == "00") {
	gn = g-1;
	mn = 59;
	sn = 59;
	}
    if(m != "00") {
	gn = g;	
	mn = m-1;
	sn = 59;
	}
}
if(s != "00") {
gn = g;
mn = m;
sn = s-1;
}

if((sn < 10) && (mn >= 10) && (sn - x != 0 || mn - y != 0 || gn - z != 0))  {
printf("%s %s:%s:0%s / \n/\n", DATA, gn, mn, sn );  
}
if((sn < 10) && (mn < 10) && (sn - x != 0 || mn - y != 0 || gn - z != 0))  {
printf("%s %s:%s:0%s / \n/\n", DATA, gn, mn, sn );  
}
 
if((sn >= 10) && (mn >= 10) && (sn - x != 0 || mn - y != 0 || gn - z != 0)) {
printf("%s %s:%s:%s / \n/\n", DATA, gn, mn, sn ); 
}
if((sn >= 10 && sn < 59 ) && (mn < 10) && (sn - x != 0 || mn - y != 0 || gn - z != 0)) {
printf("%s %s:%s:%s / \n/\n", DATA, gn, mn, sn ); 
}
if((sn == 59) && (mn < 10) && (sn - x != 0 || mn - y != 0 || gn - z != 0)) {
printf("%s %s:0%s:%s / \n/\n", DATA, gn, mn, sn ); 
}
} 
if((sn - x == 0) && (mn - y == 0) && (gn - z == 0)) {
printf("/ \n");
}


printf("\nWCONINJH \n");

  
printf(" 'B8-Z5Bis'   'WAT' 'OPEN'  %s / \n/ \n", $3 );
printf("\nDATES \n" );  
printf("%s %s / \n", DATA, $2 );  

x = s;
y = m;
z = g;
}
