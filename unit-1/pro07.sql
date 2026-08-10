tot:=xm1+.....xm5;
p:tot/5;
dbms(tot || p);
if xm1 > 40 and xm2 > 40 and 
then
	if p >= 40 and p < 50 then
	update mid1 set total=tot,per=p,result'Fail',Grade='D' where RLNO=xrlno;
	elsif p >= 50 and p < 60 then
	update mid1 set total=tot,per=p,result'Fail',Grade='C' where RLNO=xrlno;
	elsif p >= 60 and p < 70 then
	update mid1 set total=tot,per=p,result'Fail',Grade='b' where RLNO=xrlno;
	elsif p >= 70 and p < 80 then
	update mid1 set total=tot,per=p,result'Fail',Grade='F' where RLNO=xrlno;
	end if;
else
	update mid1 set total=tot,per=p,result'Fail',Grade='F' where RLNO=xrlno;
end if;
end;
/
