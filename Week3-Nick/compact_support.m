function y = compact_support(r)

if 1-r > 0
    y = (1-r)^4 * (4*r+1);
else
    y = 0;
end