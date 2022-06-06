void main(List<String> args) {

  // SETS tem o mesmo formato de uma lista
  // como essa lista abaixo
  // a unica caracterisca especial do SET é que ele nao aceira componentes repetidos
  var numerosLista = [];

  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(4);
  numerosLista.add(4);
  numerosLista.add(3);
  numerosLista.add(2);
  numerosLista.add(null);
  print(numerosLista);
  

// Maneira de criar um set
  var numerosSet1 = Set();// maneira 1
  var numerosSet2 = <int>{};// maneira 2

// vamos fazer as mesmas inserções no set q ue fizemos na lista

  numerosSet1.add(1);
  numerosSet1.add(2);
  numerosSet1.add(3);
  numerosSet1.add(4);
  numerosSet1.add(4);
  numerosSet1.add(3);
  numerosSet1.add(2);
  numerosSet1.add(1);
  print(numerosSet1);

//OBS: O set não permite a duplicação de valores.  ESSE METODO NÃO DUPLICA NEM MESMO O NULL
// veja que o print do set vai trazer apenas valores que não se repetem

//Tambem posso pegar uma lista normal e transformar em um set
// como non exemplo abaixo
var numerosDeListaParaSet = numerosLista.toSet(); 
numerosDeListaParaSet.add(5);
// o set retirou todos os numeros duplicados da lista
// eu adicionei mais um numero 
print(numerosDeListaParaSet);

// Podemos usar todoso os metodos que usamos em iterables para o set como o for in ou mesmo o foreach
//veja o exemplo

for (var element in numerosDeListaParaSet) {
  print(element);
}

// METODOS LEGAIS DO SET
// No set temos um metodo para ver a diferença entre duas listas como no exemplo abaixo

var nomesSet = {'Maria','Joao','Pedro','Ana','Claudia'};
var nomesSet2 = {'ulysses','Joao','Pedro','Claudia'};

//temos a funcao diference
//ele ira fazer a difenreça entre nomesSet e nomesSet2
print(nomesSet.difference(nomesSet2));

//union
//permite eu juntar duas listas de sets, seguindo a logica de que não pode repetir nenhum componente na lista
var nomesUnion = nomesSet.union(nomesSet2); 
print(nomesUnion);

//itersection
// o intersection como o proprio nome ka diz pega a intersseção das duas lista
// Isto é, pega o que tem de comum nas duas listas
var nomesIntersetion = nomesSet.intersection(nomesSet2); 
print(nomesIntersetion);

//lookup
// essa funcao nada mas faz do que uma busca no set
//exemplo abaixo
// caso ele acha ira retorna o que achou, caso ano ache retorna null
print(nomesIntersetion.lookup('Claudia'));

// OBS: A uma coisa que muda em relação a lista é a forma de como pegamos apenas um elemento do set
// ele nao é como as listas que podemos pegar um elemmento apenas colocando o indice
numerosLista[0]; // enquando que nas listas é possivel fazer isso, nao podemos fazer no set
nomesIntersetion.elementAt(0);// no set fazemos assim para pegar um elemento

// Contudo nada inpede que fazer um toList e transforma o set em uma lista
// E pegar o elemento usando os indices[]
//exemplo 
var listaDeSet = nomesIntersetion.toList();
listaDeSet[0];




}