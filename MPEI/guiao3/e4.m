%% Alinea A)

%Experiencia de bernoulli:
%Ter ou não ter defeito

N = 1e6;
p = 0.3;

%Prob de coroa = Prob de defeito
S = 0:5; %Espaço amostral

P = zeros(6,1);%Função massa de probabilidade
for i = S + 1
    P(i) = P(i) + moedas(p, 5, i-1, N); 
end

Px = cumsum(P); %Função distribuição acumulada
subplot(1,2,1) % i)
stem(S,P)
xlabel("X")
ylabel("Função massa de probabilidade")
hold on
%subplot(1,2,2) % ii)
%stairs(S, Px)
%xlabel("X")
%ylabel("Função distribuição acumulada")
 
% iii)
a_iii = Px(3)

%% Alineas b)

N = 1e6;
p = 0.3;

%Prob de coroa = Prob de defeito
S = 0:5; %Espaço amostral

Pt = zeros(6,1);%Função massa de probabilidade
for i = S + 1
    Pt(i) = Pt(i) + nchoosek(5,i-1) * p^(i-1) * (1 - p)^(5-i+1); 
end

subplot(1,2,1)
stem(S,Pt, "Marker","+")
hold off


Pxt = cumsum(Pt); %Função distribuição acumulada

subplot(1,2,2)
stairs(S, Pxt)

P_bii = Pxt(3)