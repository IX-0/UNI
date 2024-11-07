%% Unique words
f1 = "just plain boring";
f2 = "entirely predictable and lacks energy";
f3 = "no surprises and very few laughs";
f4 = "very powerful";
f5 = "the most fun film of the summer";

phrases = {f1, f2, f3, f4, f5};
W = [];
for phrase = phrases
    W = [W strsplit(phrase{1,1})];
end
W_set = unique(W);

%% Building the matrix
len_p = length(phrases);
len_uniq = length(W_set);
Traning = zeros(len_p,len_uniq);

for j = 1:len_p
    for k = 1:len_uniq
           Traning(j,k) = count(phrases{j},W_set(k));
    end
end

%% Classifying the phrases

cat = [ "-", "-", "-", "+", "+" ]';

%% Probabilities
P_minus = sum(cat == "-")/length(cat);
P_plus = sum(cat == "+")/length(cat);

Probabilities = zeros(len_p, len_uniq);
for j = 1:len_p
    for k = 1:len_uniq
           Probabilities(j,k) = (sum(Traning(:,k)) + 1 ) / ( + len_uniq);
    end
end

Training_plus = Traning(cat == "+",:);
occr = sum(Training_plus);
prob_predictable = (sum(occr(W_set == "predictable")) + 1) ...
                    /(sum(occr) + len_uniq) % P( "predictable" | + )

%% Notas da aula

%% P(word_i | +)
% numero total de ocorrencias de word_i na classe sobre numero total de
% palavras na classe
% obter total de palavras na classe


%%% REFAZER TUDO EM CASA