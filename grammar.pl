% T = Tempo verbal
% N, M = Número
% G = Gênero
% P = Pessoa
% Exemplo de teste: frase(presente, [o, gato, caça, o, rato], []).

frase(T) --> interjeicao, sujeito(N,P), predicado(T,N,P).
frase(T) --> interjeicao, sujeito(N,P), predicado(T,N,P), conjuncao, frase(T).

interjeicao --> [minha], [nossa], [!] | [oh], [meu], [deus], [!] | [ai], [ai], [ai], [!] | [].

sujeito(N,P) --> pronome(N, P).
sujeito(N,P) --> (artigo(N,G) | numeral(N,G)), substantivo(N,G,P), adjetivo(N,G).

predicado(T,N,P) --> verbo_transitivo_direto(T,N,P), (artigo(M,G) | numeral(M,G)), substantivo(M,G,_), adjetivo(M,G), adverbio_modal.
predicado(T,N,P) --> verbo_transitivo_indireto(T,N,P), preposicao , (artigo(M,G) | numeral(M,G)), substantivo(M,G,_), adjetivo(M,G), adverbio_modal.
predicado(T,N,P) --> verbo_intransitivo(T,N,P), adverbio_modal.

artigo(s,m) --> [o] | [um].
artigo(p,m) --> [os] | [uns].
artigo(s,f) --> [a] | [uma].
artigo(p,f) --> [as] | [umas].

pronome(s, primeira) --> [eu].
pronome(s, segunda) --> [tu].
pronome(s, terceira) --> [ele] | [você].
pronome(p, primeira) --> [nós].
pronome(p, segunda) --> [vós].
pronome(p, terceira) --> [eles] | [vocês]. 

preposicao --> [de].

numeral(s,_) --> [um].
numeral(p,_) --> [dois] | [três] | [quatro] | [cinco] | [seis] | [sete] | [oito] | [nove] | [dez].

substantivo(s,m,terceira) --> [gato] | [rato].
substantivo(p,m,terceira) --> [gatos] | [ratos].
substantivo(s,f,terceira) --> [gata] | [rata].
substantivo(p,f,terceira) --> [gatas] | [ratas].

adjetivo(s,m) --> [feio] | [sujo] | [].
adjetivo(p,m) --> [feios] | [sujos] | [].
adjetivo(s,f) --> [feia] | [suja] | [].
adjetivo(p,f) --> [feias] | [sujas] | [].

%verbos transitivos diretos
verbo_transitivo_direto(passado,s,primeira) --> [cacei] | [comi].
verbo_transitivo_direto(passado,s,segunda) --> [caçaste] | [comeste].
verbo_transitivo_direto(passado,s,terceira) --> [caçou] | [comeu].
verbo_transitivo_direto(passado,p,primeira) --> [caçamos] | [comemos].
verbo_transitivo_direto(passado,p,segunda) --> [caçastes] | [comestes].
verbo_transitivo_direto(passado,p,terceira) --> [caçaram] | [comeram].

verbo_transitivo_direto(presente,s,primeira) --> [caço] | [como].
verbo_transitivo_direto(presente,s,segunda) --> [caças] | [comes].
verbo_transitivo_direto(presente,s,terceira) --> [caça] | [come].
verbo_transitivo_direto(presente,p,primeira) --> [caçamos] | [comemos].
verbo_transitivo_direto(presente,p,segunda) --> [caçais] | [comeis].
verbo_transitivo_direto(presente,p,terceira) --> [caçam] | [comem].

verbo_transitivo_direto(futuro,s,primeira) --> [caçarei] | [comerei].
verbo_transitivo_direto(futuro,s,segunda) --> [caçarás] | [comerás].
verbo_transitivo_direto(futuro,s,terceira) --> [caçará] | [comerá].
verbo_transitivo_direto(futuro,p,primeira) --> [caçaremos] | [comeremos].
verbo_transitivo_direto(futuro,p,segunda) --> [caçareis] | [comereis].
verbo_transitivo_direto(futuro,p,terceira) --> [caçarão] | [comerão].

%verbos transitivos indiretos
verbo_transitivo_indireto(passado,s,primeira) --> [duvidei] | [precisei].
verbo_transitivo_indireto(passado,s,segunda) --> [duvidaste] | [precisaste].
verbo_transitivo_indireto(passado,s,terceira) --> [duvidou] | [precisou].
verbo_transitivo_indireto(passado,p,primeira) --> [duvidamos] | [precisamos].
verbo_transitivo_indireto(passado,p,segunda) --> [duvidastes] | [precisastes].
verbo_transitivo_indireto(passado,p,terceira) --> [duvidaram] | [precisaram].

verbo_transitivo_indireto(presente,s,primeira) --> [duvido] | [preciso].
verbo_transitivo_indireto(presente,s,segunda) --> [duvidas] | [precisas].
verbo_transitivo_indireto(presente,s,terceira) --> [duvida] | [precisa].
verbo_transitivo_indireto(presente,p,primeira) --> [duvidamos] | [precisamos].
verbo_transitivo_indireto(presente,p,segunda) --> [duvidais] | [precisais].
verbo_transitivo_indireto(presente,p,terceira) --> [duvidam] | [precisam].

verbo_transitivo_indireto(futuro,s,primeira) --> [duvidarei] | [precisarei].
verbo_transitivo_indireto(futuro,s,segunda) --> [duvidarás] | [precisarás].
verbo_transitivo_indireto(futuro,s,terceira) --> [duvidará] | [precisá].
verbo_transitivo_indireto(futuro,p,primeira) --> [duvidaremos] | [precisaremos].
verbo_transitivo_indireto(futuro,p,segunda) --> [duvidareis] | [precisareis].
verbo_transitivo_indireto(futuro,p,terceira) --> [duvidarão] | [precisarão].

%verbos intransitivos
verbo_intransitivo(passado,s,primeira) --> [miei] | [corri].
verbo_intransitivo(passado,s,segunda) --> [miaste] | [correste].
verbo_intransitivo(passado,s,terceira) --> [miou] | [correu].
verbo_intransitivo(passado,p,primeira) --> [miamos] | [corremos].
verbo_intransitivo(passado,p,segunda) --> [miastes] | [correstes].
verbo_intransitivo(passado,p,terceira) --> [miaram] | [correram].

verbo_intransitivo(presente,s,primeira) --> [mio] | [corro].
verbo_intransitivo(presente,s,segunda) --> [mias] | [corres].
verbo_intransitivo(presente,s,terceira) --> [mia] | [corre].
verbo_intransitivo(presente,p,primeira) --> [miamos] | [corremos].
verbo_intransitivo(presente,p,segunda) --> [miais] | [correis].
verbo_intransitivo(presente,p,terceira) --> [miam] | [correm].

verbo_intransitivo(futuro,s,primeira) --> [miarei] | [correrei].
verbo_intransitivo(futuro,s,segunda) --> [miarás] | [correrás].
verbo_intransitivo(futuro,s,terceira) --> [miará] | [correrá].
verbo_intransitivo(futuro,p,primeira) --> [miaremos] | [correremos].
verbo_intransitivo(futuro,p,segunda) --> [miareis] | [correreis].
verbo_intransitivo(futuro,p,terceira) --> [miarão] | [correrão].

adverbio_modal --> [desesperadamente] | [maleficamente] | [rapidamente] | [].

conjuncao --> [,], [mas] | [,], [porém] | [e]. 

letra(L) :-
  A = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, x, y, w, z],
  member(L, A).

