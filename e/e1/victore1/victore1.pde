// Array de objetos
Prueba[] objetos;
int max, med, min, maraca;
Table tabla;

void setup() { 
  size(1000,1000);
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("BaseDatosIquitos6Meses.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();
  objetos = new Prueba[total]; 

  // lo mismo se puede escribir en una línea de código
  objetos = new Prueba[tabla.getRowCount()]; 

  ///   4    /////////////////////////////////////////////////////////////////////////////////////
  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato
  ////////////////////////////////////////////////////////////////////////////////////////////////

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor      // La paridad debe ser exacta en caracteres
    // Una variable del constructor - por cada variable del dato (que queramos)

    int max = row.getInt("Max TemperatureC");
    int med = row.getInt("Mean TemperatureC");
    int min = row.getInt("Min TemperatureC");

    // Con esas variables construyo un objeto
    objetos[i] = new Prueba(max, med, min);
  }}
  
  void draw() {
  //background(253);
  // Uso de los objetos como siempre
   for (int k = 0; k < objetos.length; k ++) {
     objetos[k].poto();
  }
}