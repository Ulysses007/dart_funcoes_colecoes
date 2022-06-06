void main(List<String> args) {

somaInt(1, 2);// chamada de uma função formal
somaArrow(3, 4);// chamada de uma função arrow


// funções anonimas
// O diferencial é que posso associa-las a variaveis
// tem apenas os parametros e o corpo da funcao
var funcaoAnonima = (){
print('chamou a função da variavel');
}();


// exemplo de funcao que chama uma funcao anonima
funcaoDentroDeFuncao((nome) {

  if (nome.toLowerCase() != 'ulysses martins') {
    print('Você é uma fraude');
  }else{
    print(nome);
    
  }
});
// chamada de uma funcao com Typedef
primeiraFuncao((numero, {nome, numeroDouble}) { });
}




// Partes de uma função
//1 retorno
//2 nome
//3 parametros(normais, nomeados, opcionais)  

//função normal
int somaInt(int numero1, int numero2){
return numero1 + numero2;
}

// função arrow
// função feita para otimizar
// feita em apenas uma unica linha
// não precisa colocar a palavra return
//o que for executado dentro da função já vai ser retornado 
// exemplo de arrow function
int somaArrow(int numero1, int numero2)=> numero1 + numero2;
// tambem pode ser void
void somaArrowVoid(int numero1, int numero2)=> numero1 + numero2;

// podemos chamar uma função dentro de outra funcao como nesse exemplo
void funcaoDentroDeFuncao(void Function(String nome) segundaFuncao){
 var soma = 1 + 1;
  var nome = 'Ulysses Martins';

  segundaFuncao(nome);
}

// typedef
// podemos matar toda essa parte -> void Function(String nome) usando o typedef

typedef funcaoType = void Function(String nome); 

//Posso passar em vez de  void Function(String nome)
// passo apenas o tipodefinido que criei. -> funcaoType
// como se fosse um alias
void funcaoDentroDeFuncao1(funcaoType segundaFuncao){
 var soma = 1 + 1;
  var nome = 'Ulysses Martins';

  segundaFuncao(nome);
}

// facilita quando temos uma assinatura muito grande
// exemplo

typedef funcaoComVariosParametros = void Function(int numero ,{String? nome, double? numeroDouble});

void primeiraFuncao (funcaoComVariosParametros funcaoVP){

funcaoVP(1);

}