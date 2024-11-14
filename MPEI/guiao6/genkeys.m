function [keys] = genkeys(N,imin,imax,charset,p)
% genkeys
% N - number of keys to generate
% imax, imin - max and min number of chars per key
% charset - pretty self explanatory
% p - probability of each char

%Some conditions
%assert(length(charset) == length(p));
assert(imin < imax);
assert(imin > 0);
assert(imax <= length(charset))

% if (nargin() == 4)
%     l_charset = length(charset);
%     p = zeros(l_charset,1) + 1/l_charset;
% end

charset_size = length(charset);

keys = cell(1,N);
key_sizes = randi([imin imax],1,N);
for i = 1:N
    indices = randi(charset_size, 1, key_sizes(i));
    newkey = charset(indices);
    keys{i} = newkey;
end