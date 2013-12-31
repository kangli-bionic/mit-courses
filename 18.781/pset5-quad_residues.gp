printQR(p)=
{
    QR = 0;
    QNR = 0;
    for(a=1, (p-1)/2,
        if(kronecker(a,p) == 1, QR++);
        if(kronecker(a,p) == -1, QNR++);
    );
    print("Prime " p " R: " QR " N: " QNR);
}

{
    plist = primes(101);
    for(i=2, 101,
         printQR(plist[i])
    );

}

