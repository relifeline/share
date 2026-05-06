program fibonnachi;
var
	sum1, sum2, cycles, cyclecount, actualcycles : integer;
	binary : boolean;
begin
binary := true;
sum1 := 0;
sum2 := 1;
write('how many cycles do you want? ');
readln(cycles);
writeln(' ');
if cycles mod 2 <> 0 then
	begin
	actualcycles := (cycles div 2) + 1;
	binary := false
	end	
	else
		actualcycles := cycles div 2;
for cyclecount := 1 to actualcycles  do
	begin	
		write(sum1,'+',sum2,'=');
		sum1 := sum1+sum2;
		writeln(sum1);
		if (actualcycles - cyclecount <> 0) or  binary then
		begin
			write(sum1,'+',sum2,'=');
			sum2 := sum1+sum2;
			writeln(sum2)
			end;
	end;
end.
	
