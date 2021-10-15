% Constraint Logic Programming
:- use_module(library(dif)).	% Sound inequality
:- use_module(library(clpfd)).	% Finite domain constraints
:- use_module(library(clpb)).	% Boolean constraints
:- use_module(library(chr)).	% Constraint Handling Rules
:- use_module(library(when)).	% Coroutining
%:- use_module(library(clpq)).  % Constraints over rational numbers

% Your program goes here
marca(intel, i3_3240).
marca(intel, i5_3330).
marca(intel, i7_3770).
marca(intel, i3_9100).
marca(intel, i5_9600KF).
marca(intel, i7_7700K).

socket(fclga1155, i3_3240).
socket(fclga1155, i5_3330).
socket(fclga1155, i7_3770).
socket(fclga1151, i3_9100).
socket(fclga1151, i5_9600KF).
socket(fclga1151, i7_7700K).

possui(arsrock,fclga1151).
possui(asus_tuf,fclga1151).
possui(asus_prime,fclga1151).
possui(placab,fclga1155).

socketmemoria(arsrock,ddr4).
socketmemoria(asus_tuf,ddr4).
socketmemoria(asus_prime,ddr4).
socketmemoria(placab,ddr4).

armazenamento(hd,seagate1TB).
armazenamento(hd,seagate2TB).
armazenamento(hd,seagate4TB).
armazenamento(hd,seagate6TB).
armazenamento(ssd,kingston240GB).
armazenamento(ssd,kingston480GB).

memoria(husky4GB,ddr4).
memoria(kingstonfury8GB,ddr4).
memoria(xpggammix,ddr4).

valor(kingston240GB,216.90).
valor(kingston480GB,368.90).
valor(kingstonfury8GB,439.90).
valor(xpggammix,419.90).
valor(husky4GB,149.90).
valor(asus_tuf,579.00).
valor(arsrock,519.00).
valor(asus_prime,499.90).
valor(seagate1TB,376.00).
valor(seagate2TB,672.00).
valor(seagate4TB,1040.00).
valor(seagate6TB,2500.10).
valor(placab,300.20).
valor(i3_3240, 239.9002).
valor(i5_3330, 359.00).
valor(i7_3770, 790.00).
valor(i3_9100, 1091.80).
valor(i5_9600KF, 1538.00).
valor(i7_7700K, 1861.40).

calcula():- write('digite a marca que voce quer'),
    ( 
            read(Marca),
        	write('digite o limite de preco que procura'),
        	read(Limite),
        	write('tipo de armazenamento: hd ou ssd'),
        	read(Tipo),
        	marca(Marca,Processador),
        	socket(Socket,Processador),
        	possui(Placa,Socket),
        	socketmemoria(Placa,Socketmemoria),
        	memoria(Memoria,Socketmemoria),
        	armazenamento(Tipo,Armazenamento),
        	valor(Armazenamento,Valor_armazenamento),
        	valor(Memoria,Valor_memoria),
        	valor(Processador,Valor_processador),
        	valor(Placa,Valor_placa),
        	ValorFinal is Valor_placa + Valor_processador+Valor_armazenamento+Valor_memoria,
        	( ValorFinal =< Limite,write('a placa : '),write(Placa),
        	write(' junto com o processador '),
        	write(Processador),write(' com um armazenamento '),write(Armazenamento),write(' junto com uma memoria '), write(Memoria),write(' possui o valor de :'),writeln(ValorFinal))
      
        	
        
        	
    ).
/** <examples> Your example queries go here, e.g.
?- X #> 1.
*/
