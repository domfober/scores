# Outils de conversion en tablatures

--------------

## gmn2tab

Usage :
~~~~~~~~
gmn2tab <file>
      où file est un fichier gmn
~~~~~~~~

en entrée : un fichier gmn annoté  
en sortie : un fichier gmn avec les tablatures  

### Annotations :

% tab: [TP] [CG]  
	Calcule la tablature en tiré [T] ou en poussé [P] en utilisant de préférence le clavier de do [C] ou de sol [G]
	
% PTY: $var1 $var2  
	Utilise les variable `$var1` pour la position en y des tablatures en poussé et `$var2` pour la position en y des tablatures en tiré.  
	Les valeurs par défaut sont `$Py` et `$Ty`   
	Ces variables doivent être déclarées dans le fichier en entrée.
	
% footer: \<footer>  
	Utilise `footer` pour la fin de fichier.  
	Valeur par défaut :   
~~~~~~~~~
,[
	\set<autoEndBar="off">
	\staffFormat<"1-line",distance=$dist> \clef<"none">
	\instr<"P", fsize=16pt, dx=-10, dy=1.5>
	\instr<"T",fsize=16pt, dx=-14.5, dy=-5>
]}
~~~~~~~~~

**Attention** : la chaine en  argument de `footer` ne doit comporter ni saut à la ligne ni espaces.

### Tablatures des accords :

Les accords sont pris en charge avec les contraintes suivantes :

- un seul accord par ligne
- pas d'autre tag sur la ligne de l'accord

--------------

## tab2gmn

Usage :
~~~~~~~~
tab2gmn <file> <FLAT>
      où file est un fichier de tablatures
         FLAT [optionel] donne la préférence pour une utilisation de dièses ou de bémols
              les valeurs attendues sont 1 [bémol] ou 0 [dièse]
              la valeur par défault est 0
               
~~~~~~~~

en entrée : un fichier texte annoté  
en sortie : un fichier gmn avec les tablatures  

### Format du fichier texte en entrée :
Les lignes commençant par `H` `P` ou `T` sont interprétées comme des directives de tablature ou d'harmonie :

- `P` : décrit une tablature en poussé. Doit être suivi d'un numéro de touche suivi de `'` pour le clavier de do ou de `''` pour le troisième rang. Par défaut : rang de sol.
- `T` : décrit une tablature en tiré. Comme précédemment, doit être suivi d'un numéro de touche suivi de `'` pour le clavier de do ou de `''` pour le troisième rang
- `H` : décrit une harmonie. Doit être suivi d'un nom d'accord en notation gmn (par ex: Am, G&7)

La durée des notes décrites par les marqueurs `P` ou `T` est indiquée comme pour les notes en GMN (avec une durée implicite quand elle n'est pas indiquée).

Il n'est pas possible de mélanger tablatures en tiré et en poussé sur une même ligne.  
Les lignes qui **ne commencent pas** par `H` `P` ou `T` sont produites en sortie telles quelles. Il est donc possible de mélanger du code GMN et des tablatures.

Exemple
~~~~~~~~
T8/8 T7' 
\repeatBegin

%%%%%% mes. 1
H A
T9/8 T7 T9 T7 T9 T7 
|
H D
T7' T8 T6' T7 T6' T8 
|

\voltaBegin<"1.">
H E
P7 P6' P7 P6' P7 P6' 
\voltaEnd
\repeatEnd
\voltaBegin<"2.", "|-">
H E
P7 P6' P8 P7' P8 P6' 
\voltaEnd

H Fff
T8/4 T9 
|
H Fff
T8/4 T9
|
~~~~~~~~
