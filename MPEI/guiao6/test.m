%% Gerar chave
imin = 6;
imax = 20;

alfabeto = ['a':'z' 'A':'Z'];
ta = length(alfabeto);

tamanho = randi([imin,imax]);

indices = randi(ta, 1, tamanho);
chave = alfabeto(indices);

%% Teste função
N = 1e5;
imin = 6;
imax = 20;
charset = ['a':'z' 'A':'Z'];

keys = genkeys(N,imin,imax,charset);

probabilities = [ 
    14.63, 1.04, 3.88, 4.99, 12.57, 1.02, 1.30, 1.28, 6.18, 0.40, ...
    0.02, 2.78, 4.74, 5.05, 10.73, 2.52, 1.20, 6.53, 7.81, 4.34, ...
    4.63, 1.67, 0.01, 0.21, 0.01, 0.47 ];

%% hashcodes
load('keys.mat');
N = length(keys);

for M = [5e5 1e6 2e6]
    hashcodes = zeros(1,N);
    for i = 1:N
        str_hash = string2hash(keys{i});
        hashcodes(i) = mod(str_hash,M) + 1;
    end
    plot(1:N,hashcodes, '.')
    pause(2)
end
