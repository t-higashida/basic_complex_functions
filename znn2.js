
var i=2;
//while(Math.pow(2,i)	-	Math.pow(i,2)	<	0)
while(i<100)

{
	WScript.echo(i	+	","	+	Math.pow(2,i).toFixed(4)	+	","+	Math.pow(i,2).toFixed(4));
	i=i+0.1;
}