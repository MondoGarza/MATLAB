%% summations with while loop
n = 0;
sum = 0;
while n<10
    func = sqrt(12)*((-3).^-n./(2*n+1));
    sum = sum + func;
    n = n + 1;
end
display(sum);

%with e
x = 45;
n = 0;
sn_prev = 0;
E = 9;
while E>.000001
    a = ((-1).^n./factorial(2*n+1)) * deg2rad(x).^(2*n+1);
    sn = sn_prev+a;
    E = abs((sn - sn_prev)/(sn_prev));
    sn_prev = sn;
    n = n + 1;
end
display(sn_prev);

%% for loop for vectors

v = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
f = [];
i = 1;
h = 1;
while i<=length(v)
    if i > (length(v)/2)
        f(i-h, i) = v(i);
        h = h + 2;
    else
        f(i,i) = v(i);
    end
    i = i + 1;
end
display(f);

