res = [];
N = 1e4;

alinea_a = 0;
alinea_b = 0;
a = false;

for n = 1 : 365

   res(n) = 1 - colisao_aniversarios(n, N);
   if (res(n) > 0.5) && (a == false)
       alinea_a = n;
       a = true;
   end
   if (res(n) > 0.9)
       alinea_b = n;
       break
   end
end

alinea_b
alinea_a