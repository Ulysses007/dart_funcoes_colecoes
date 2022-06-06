final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
void main(List<String> args) {

primeiroTopicoDesafio(pessoas);
segundoTopicoDesafio(pessoas);
terceiroTopicoDesafio(pessoas);
quartoTopicoDesafio(pessoas);

}



//! 1 - Remova os pacientes duplicados e apresente a nova lista
void primeiroTopicoDesafio( List pessoas){
var listaDePessoas = pessoas.toSet();
print('Quantidade de pessoas primeira lista ${pessoas.length}');
print('Lista sem pessoas repetidas');
for (var element in listaDePessoas) {
  print(element);
}
print('Quantidade de pessoas primeira lista ${listaDePessoas.length}');
}




//! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas  
void segundoTopicoDesafio(List pessoas){

var listaSexoMasculino =[];
var listaSexoFeminino =[];
var countM = 0;
var countF = 0;



for (var element in pessoas) {
var novalista = element.split('|');

  if (novalista[2] == 'Masculino') {
    countM ++;
    listaSexoMasculino.add(element);
  } else if (novalista[2] == 'Feminino') {
    countF++;
    listaSexoFeminino.add(element);
  }
}

print('Quandidade de pessoas do Sexo masculino -> $countM');
print('Quantidade de eessoas do Sexo feminino -> $countF');


var ListaSexoMF = [...listaSexoMasculino,...listaSexoFeminino];
print('Lista de pessoas so sexo masculino');
ListaSexoMF.forEach((element) {print(element);});
}




//! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome 
terceiroTopicoDesafio(List pessoas){
var listaMairesDeIdade =[];

for (var element in pessoas) {
var novalista = element.split('|');
  if (int.parse(novalista[1]) > 18) {
    listaMairesDeIdade.add(novalista[0]);
  }
}

print('Lista de pessoas acima de 18 anos');
listaMairesDeIdade.forEach((element) {print(element);});
}




//! 4 - Encontre a pessoa mais velha e apresente o nome dela.
quartoTopicoDesafio(List pessoas){

pessoas.sort((lista1, lista2){
var idadeDados1 = lista1.split('|');
var idadeDados2 = lista2.split('|');

var idade1 = idadeDados1[1];
var idade2 = idadeDados2[1];
return idade1.compareTo(idade2);
});

print('o nome da pessoa mais velha da listga é ${pessoas.last}');
}
