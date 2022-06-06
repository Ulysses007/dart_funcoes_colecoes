void main(List<String> args) {

// parametros OBRIGATORIOS e precisam estar na ordem
print('A soma de 10 + 10 é ${somaInt(10, 10)}');

// parametros NOMEADOS -> Para passar os parametos é obrigatorio colocar o nome
// os parametros não precisam ser passados na ordem, pois no dart identifica pelo nomes
print('A soma dos duble é ${somaDouble(numero: 10.3, numero2: 11.6)}');

// como parametos nomeados podem ser nulos, posso chamar minha função assim 
// sem nenhum parametro
print('A soma dos duble é $somaDouble()');

// chamada da função com parametos required 
// O proprio dart já tras os parametros para que o dev so coloque
// Ira trazer assim se usar o auto complete -> somaparametrosObrigatorios(numero: numero, numero2: numero2)
print('Soma required ${somaparametrosObrigatorios(numero: 50.6, numero2: 60.8)}');


// nesse caso como o primeiro parametro é required mas pode ser nulo
// Eu tenho que passa-lo mas seu vamos pode ser nulo como no exemplo abaixo
print('Soma é : ${somaparametrosObrigatoriosNulos(numero: null, numero2: 50.8)}');

//Nesse posso não passar os parametros, dai o dort ira pegar os valores defaut 1 e 2
// como definido na função
print('Soma é : ${somaparametrosNulosMasComDefault()}');


// PARAMETROS OPCIONAIS
//Esse caso eu posso passar o parametro vazio
//posso passar só o primeiro parametro
//mas se quiser passar o segundo parametro eu tenho obrigatoriamente que passar o primeiro
print('Soma é: ${somaParametrosOpcionais()}');
print('Soma é: ${somaParametrosOpcionais(1)}');
print('Soma é: ${somaParametrosOpcionais(1,1)}');


//Função misturada
//veja que omiti o segundo parametro pois defini na funçãom que ele for nulo ele ira pegar o valor defaut
funcaoDaLocura(1, numero3: 5);
// mas se quiser tb posso passa-lo como abaixo 
funcaoDaLocura(1, numero2: 20, numero3: 5);

// OBS IMPORTANTE: 
// posso tem parametros OBRIGATORIOS com parametros NOMEADOS na mesma função
// posso tem parametros OBRIGATORIOS com parametros OPCIONAIS na mesma  função 
// MAS NÃO POSSO TER PARAMETROS NOMEADOS COM OPCIONAIS NA MESMA FUNÇÃO
// ATENCAO: OS PARAMETROS NOMEADOS E OPCIONAIS TEM QUE SER OS ULTIMOS A SEREM DECLARADOS NA FUNCAO
}

// funcção com parametros obrigatorios
int somaInt(int a, int b){
  return a+ b;
}

// exemplo de parametros nomeados
// os parametros nomeados por padrao aceitam nulos, logo temos sempre que colocar as ? na frente dos tipos
double somaDouble({double? numero, double? numero2}){
  if (numero != null && numero2!= null) {
  return numero + numero2;  
  }
  return 0.0;  
}

// Nesse caso por os parametros estarem dentro das chaves eles podem ser nulos
// mas o required força esses parametros a serem obrigatorios
double somaparametrosObrigatorios({ required double numero, required double numero2}){
  return numero + numero2;  
}
// Mesmo o parametro sendo requered eu posso usar a ? para dizer que ele pode ser nulo
double somaparametrosObrigatoriosNulos({ required double? numero, required double numero2}){
  // tive que testar se o meu primeiro parametro é diferente de null
  //pois coloque a ? e com isso ele pode ser nulo  
  numero ??=0; // comando que diz que se o parametro numero for null ele coloca zera e se não for nulo ele nãom faz nada
  return numero + numero2;    
}

// Nesse caso os parametos são nomeados
//Isso quer dizer que eles aceitam null, defini valores para os parametros caso eles sejam nulos
//são eles 1 e 2 para numero e numero2. tambem posso passar apenas um dos dois paramentos.
double somaparametrosNulosMasComDefault({ double numero = 1, double numero2 = 2}){
  return numero + numero2;    
}

//Exemplo de parametros OPCIONAIS
int somaParametrosOpcionais([int numero = 1, int numero2 = 2]){
  return numero + numero2;    
}

// USANDO TODOS OS TIPOS DE PARAMETROS AO MESMO TEMPO
 void funcaoDaLocura( int numero1,{double numero2 = 1,  required double? numero3}){
 }

