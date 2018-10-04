trise = 6 ;
t = 0;
tset = 18;
time = 0:1:23;
for t = 1:1:24
if (t <= 7)
    i(t) = 0;
elseif (t>7 && t <= 18) 
    i(t) = 1367 * sin ( (pi * (t - trise))/(tset - trise));
elseif (t>18 && t <= 24)
    i(t) = 0;
end
end
plot (time, i)
xlabel ('time in hours');
ylabel (' Irradiance W/m^2');