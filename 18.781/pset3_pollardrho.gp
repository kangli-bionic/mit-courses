    f(x,n)=(x^2 + 1) % n;

    pr(n)=
    {
        x=2;
        y=5;
        d=1;
        while(d==1,
            x=f(x,n);
            y=f(f(y,n),n);
            d=gcd(abs(y-x),n);
        );
        if (d==n, print("Failure"), print(d));
    }

