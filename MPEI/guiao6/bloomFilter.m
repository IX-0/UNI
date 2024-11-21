function BF = criar(b)
% Inicialização do bloom filter
% input: b - tamanho do filtro
% output: BF - vetor de bits

BF = zeros(1,b,'uint8');

end

function BF = adicionar(elem, BF, k)
% Adicionar o elemento ao BF usando k funções de hash
% input: elem - array de caracteres
%        BF - array binário
%        k - numero de funções de hash
% output: BF - array binário atualizado

    chave = elem;
    for hf = 1:k
        chave = [chave num2str(hf)];
        key = string2hash(chave);
        index = mod(key,length(BF)) + 1;
        BF(index) = 1;
    end

end

function res = verificar(elem, BF,k)
% Devolve 1 se está presente, 0 se não está presente
% input: BF - array binário
%        k - número de funções de hash
% output: res - logical

res = true;
    chave = elem;
    for hf = 1:k
        chave = [chave num2str(hf)];
        key = string2hash(chave);
        index = mod(key,length(BF)) + 1;

        if (BF(index) == 0) 
            res = false;
        end
    end
end

function [BF] = test()
    disp("Test1 --- Initialização do array")
    n = 8000;
    BF = criar(n);
    whos arr

    disp("Test2 --- Adicionar o valor ao array")
    k = 3;
    BF = adicionar('TestString', BF, k);
    disp(sum(BF));
    stem(BF)

    disp("Test3 --- Verificar a presença de um valor")
    disp("1: ")
    disp(verificar('TestString', BF, k))
    disp("0: ")
    disp(verificar('Teststring', BF, k))
    disp("0: ")
    disp(verificar('valor', BF, k))
end

%% Main

%1
test();

%2
