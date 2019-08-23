% lab06.m
% amando garza

clear;
format short;
format compact;

%% p06
tch = [75 79 86 86 79 81 73 89 91 86 81 82 86 88 89 90 82 84 81 79 73 69 73 79 82 72 66 71 69 66 66];
tsf = [69 68 70 73 72 71 69 76 85 87 74 84 76 68 79 75 68 68 73 72 79 68 68 69 71 70 89 95 90 66 69];

% p06a
index = 1;
total_temp = 0;
while index <= length(tch)
    total_temp = total_temp + tch(index);
    index = index+1;
end
p06a = total_temp/length(tch);
display(p06a);

% p06b
index = 1;
total_temp = 0;
while index <= length(tsf)
    total_temp = total_temp + tsf(index);
    index = index+1;
end

p06b = total_temp/length(tsf);
display(p06b);

% p06c
index = 1;
p06c = 0;
while index <= length(tch)
    if tch(index) > p06a
        p06c = p06c + 1;
        index = index + 1;
    else
        index = index + 1;
    end
end
display(p06c);

% p06d
index = 1;
p06d = [];
while index <= length(tsf)
    if tsf(index) > p06b
        p06d = [p06d; index];
        index = index + 1;
    else
        index = index + 1;
    end
end
display(p06d);

% p06e
index = 1;
p06e = [];
while index <= length(tsf)
    if tsf(index) < tch(index) 
        p06e = [p06e; index];
        index = index + 1;
    else
        index = index + 1;
    end
end
display(p06e);

% p06f
index = 1;
p06f = [];
while index <= length(tsf)
    if tsf(index) == tch(index) 
        p06f = [p06f, index];
    end
    index = index + 1;
end
display(p06f);

% p06g
p06g = sum(tch > p06a);
display(p06g);

% p06h
p06h = find(tsf > p06b)';
display(p06h);

% p06i
p06i = find(tsf < tch)';
display(p06i);

% p06j
p06j = find(tsf == tch)';
display(p06j);

%% p07
one = 0;
p07 = (one);
n = 20;
for i=1:n-1
    if i == 1
        two = one + 1;
        p07 = [p07; two];
    else
        p07 = [p07; one + two];
        one = two;
        two = p07(i+1);
    end
end
display(p07);

%% p09
for matrix_size=4:7
    pascal=[];
    for rows=1:matrix_size
        for columns=1:rows
            pascal(rows, columns) = factorial(rows-1)/(factorial(columns-1)*factorial(rows-columns));
        end
    end
    if matrix_size == 4
        p09a = pascal;
    elseif matrix_size == 5
        p09b = pascal;
    elseif matrix_size == 6
        p09c = pascal;
    else
        p09d = pascal;
    end
end
display(p09a);
display(p09b);
display(p09c);
display(p09d);

%% p13
format long;
for p=5:5:20
    total = 0;
    for i=0:p
        total = total + sqrt(12) * ((-1/3)^i/(2*i + 1));
    end
    if p == 5
        p13a = total;
    elseif p == 10
        p13b = total;
    elseif p == 20
        p13c = total;
    end
end
display(p13a);
display(p13b);
display(p13c);

%% p17
format bank;
scores = [73 91 37 81 63 66 50 90 75 43 88 80 79 69 26 82 89 99 71 59];
sorted = sort(scores);

%p17a
total = 0;
index = 0;
while index < 8
    total = total + sorted(length(scores)-index);
    index = index + 1;
    if index == 8
        p17a = total/8;
    end
end
display(p17a);

%p17b
p17b = sum(sorted(length(sorted):-1:length(sorted)-7))/8;
display(p17b);

%% p18
format long;
for degree=45:75:195
    total = 0;
    index = 0;
    e = 1;
    while e >= .000001
        sn_previous = total;
        total = total + ((-1)^index/factorial(2*index + 1)) * deg2rad(degree)^(2*index + 1);
        e = abs((total - sn_previous)/sn_previous);
        index = index + 1;
    end
    if degree == 45
        p18a = total;
    elseif degree == 195
        p18b = total;
    end
end
display(p18a);
display(p18b);
clear columns degree e i index matrix_size n one p;
clear pascal rows scores sn_previous sorted tch total;
clear total_temp tsf two;