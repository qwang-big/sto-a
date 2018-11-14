while(<>){
chomp;@t=split(/\t/);
$h{$t[3]}.="\"$t[1]\","
}
foreach(sort keys %h){
print "\"$_\":[",substr($h{$_},0,-1),'],'
}
