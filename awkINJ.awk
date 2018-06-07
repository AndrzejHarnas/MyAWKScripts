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


if(NR==1) {

printf("WCONINJE \n");

  
printf(" 'B8-Z2Bis'    'WATER'  'OPEN' 'RATE'   %s    1*  2000.00   1*  1* \n/ \n", $3 );
printf("DATES \n" );  
printf("%s %s / \n", DATA, $2 );  


}


if(NR>2) {

czas = $2;
s=substr(czas, 7, 2);
g=substr(czas, 1, 6);
sn=s-1;
if(sn < 10){
printf("%s %s0%s / \n/\n", DATA, g, sn );  
}

if(sn >= 10){
printf("%s %s%s / \n/\n", DATA, g, sn );  
}



printf("\nWCONHIST \n");

  
printf(" 'B8-5k'    'OPEN'  'ORAT'   %s     0.00       0.00   0  1*    0.00     0.00  / \n/ \n", $3 );
printf("\nDATES \n" );  
printf("%s %s / \n", DATA, $2 );  


}





}
