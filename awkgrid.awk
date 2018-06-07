BEGIN{
ii=1;
jj=1;
kk=1;}
{

if($1 == "--" || $1 == "PRESSURE" ) {

}

else {
for(x=1; x<=40;x++){

if($x!=""){
split($x,a,"*");

if(a[2]!="") {

for(i=1;i<=a[1];i++){
if(ii>153){
ii=1;
jj=jj+1;
} 

if(jj>207){
ii=1;
jj=1;
kk=kk+1;
}

printf("%s %s %s %s \n", ii, jj, kk, a[2]);
#printf("%s \n", a[2]);
ii=ii+1
}
}
else {
if(ii>153){
ii=1;
jj=jj+1;
} 

if(jj>207){
ii=1;
jj=1;
kk=kk+1;
}
printf("%s %s %s %s \n", ii, jj, kk, a[1]);
#printf("%s \n", a[1]);
ii=ii+1
}



}
}

}
}
