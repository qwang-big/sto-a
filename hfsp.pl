print '[';
while(<>){
print "{$1" if /("Code":\S+?,)/;
print "$1\"," if /("CQCXR":"\S{10})/;
print $1 if /("EarningsPerShare":\S+?,)/ or /("JLYTBZZ":\S+?,)/;
print "$1}," if /("AllocationPlan":\S+?"),/;
}
print ']';