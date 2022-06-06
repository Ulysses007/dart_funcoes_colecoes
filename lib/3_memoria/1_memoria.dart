void main(List<String> args) {

// entendendo passagens por referencias no dart

var lista = ['Ulysses'];
// essa lista contem aopenas a String Ulysses
print(lista);
// funcao que adiciona itens na lista
funcaoAdd(lista);
//essa vista já terá outros nomes que foram adicionados pela funcaoAdd
print(lista);
// podemos comprovar que se tratam na mesma lista  apenas usando o metodo hastcode veja
print(lista.hashCode);
//veja que a referencia de memoria é a mesma da lista que printei dentro da funcao

//OBS. Alguns metodos do tipo lista iram alterar a lista de forma definitiva
// mas tem metodos que nao iram fazer isso

}
// qunado passamos uma  lista por parametro
// você está passando ela por referencia ou seja, ela propria e não uma copia
//caso faça alguma coisa com essa lista ira dentro dessa função
//a operação feita na lista será pernamente. 
void funcaoAdd(List lista){
lista.add('Martins'); // adicionou permanentemente da lista original
lista.add('Filipe Martins');// adicionou permanentemente na lista original
print(lista.hashCode);
}


// MANEIRA CORRETA PARA MODIFICAR UMA LISTA SEM MODIFICAR A ORIGINAL
//Dessa maneira a foi criada uma lista local da lista e modifiquei ela. 
//Dessa maneira a lista que passei por parametro não será modificada
void manipulaListaCorretamente (List lista){
  var listaLocal = lista;
  listaLocal.add(' tereza');
  listaLocal.add('coelho de uba');
  listaLocal.remove('Ulysses');
}