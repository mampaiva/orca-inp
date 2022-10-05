#!/bin/bash

for (( j = 01 ; j <= 9; j++ ))
    do
    
cat > mf-h-openshell-singlet-mscan-$j.inp << EOF
%Pal nprocs 6 end
%MaxCore 1000
! M062X UKS aug-cc-pVQZ SmallPrint
%moinp "mf-h-scan-wb97xd3.00$j.gbw"
%scf
FlipSpin 1
FinalMs 0
end
* xyzfile 0 1 mf-h-scan-wb97xd3.00$j.xyz
EOF

nohup /usr/local/orca503/orca mf-h-openshell-singlet-mscan-$j.inp >& mf-h-openshell-singlet-mscan-$j.out
   done 
   
for (( j = 10 ; j <= 60; j++ ))
    do
    
cat > mf-h-openshell-singlet-mscan-$j.inp << EOF
%Pal nprocs 6 end
%MaxCore 1000
! M062X UKS aug-cc-pVQZ SmallPrint
%moinp "mf-h-scan-wb97xd3.0$j.gbw"
%scf
FlipSpin 1
FinalMs 0
end
* xyzfile 0 1 mf-h-scan-wb97xd3.0$j.xyz
EOF
nohup /usr/local/orca503/orca mf-h-openshell-singlet-mscan-$j.inp >& mf-h-openshell-singlet-mscan-$j.out
   done 
