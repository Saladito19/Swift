# Swift
``` switf
print("David");print("Castillo")

//Variables
//Var nombre : Tipo de Datos
//Inferencia
var salon = "S2"
var edad = 23
var promedio = 82.6
var bandera = false

print(edad)

//Indicar el tipo de dato
var nombre:String
nombre = "David"

//Constantes
let escuela = "TecNM"
let diasSemana = 7
let diasMesFebrero: Int = 29
let mes:String
mes = "Febrero"

print("Total de dias en la semana: ",diasSemana)
print("Total de dias en la semana: \(diasSemana)")

--------------------------------------------------------------
var segundos = 60
var minutos = 60
var dia = 24
var año = 365
var cantHoras:Int
var cantMinutos:Int
var cantSegundos:Int

cantHoras = año * dia
cantMinutos = cantHoras * minutos
cantSegundos = cantMinutos * segundos
print("Cantidad de horas por año \(cantHoras)")
print("Cantidad de minutos por año \(cantMinutos)")
print("Cantidad de segundos por año \(cantSegundos)")

var edadPerro = 6
var edadHumano:Int
edadHumano = edadPerro * 7
print("Edad en años perro: \(edadPerro), Edad en aos humanos: \(edadHumano)")

--------------------------------------------------------------
var Manzanas = 4
var RestManzanas:Int
var Naranjas:Int
Naranjas = (Manzanas / 5) * 3 
RestManzanas = Manzanas % 5

print("Naranjas: \(Naranjas) Manzanas: \(RestManzanas)")

--------------------------------------------------------------
//Tipo de dato opcinal
var opcional: Int? // Es lo mismo que poner Int? = nil
opcional = 10
print (opcional)

//Desempaquetar 
//Forzada
print (opcional!)
//Segura
let numeroCadena = "123"
let convertido = Int(numeroCadena)
print("Convertido: \(convertido)")

if let value = convertido {
  print("Valor: \(value)")
}
//Si no es seguro que sea nulo, hacer esto
let numeroCadena2 = "hola"
let convertido2 = Int(numeroCadena2)
let valor2 = convertido2 ?? 0
print(valor2)



--------------------------------------------------------------
let a = 19
let b = 19

if a == b{
  print("Son iguales")
}else if a > b {
  print("Mayor: A = \(a)")
}else{
  print("Mayor: B = \(b)")
}

--------------------------------------------------------------
let x = 39 //39|28
if x % 2 == 0 {
  print("Par: \(x)")
}
else {
  print("Impar: \(x)")
}

--------------------------------------------------------------
//Condicional ternaria
//Normal
let edad = 25
let resultado = edad >= 18 ? "Eres mayor de edad" : "Eres menor de edad"
print(resultado)

//Alias de tipos
typealias feet = Int
var cantidad:feet
cantidad = 100
print("Variable con alias: \(cantidad)")

--------------------------------------------------------------
let a = 3, b = 3, c = 3
let resultado = (a == b && b == c) ? "Todas son iguales" :
                (a == b || a == c || b == c) ? "Al menos dos variables son iguales" :
                "Todas son diferentes"
print(resultado)

--------------------------------------------------------------
let volado = Int.random(in:1...2)
print(volado)
if volado % 2 == 0{
  print("aguila")
}else{
  print("sello")
}

--------------------------------------------------------------
var randomInt = Int.random(in: 0..<6)//1 a 5
var randomDouble = Double.random(in: 2.71...8.14)//2.71 a 8.14
var randomBool = Bool.random()
print("RandomInt: \(randomInt)")
print("RandomDouble: \(randomDouble)")
print("RandomBool: \(randomBool)")

--------------------------------------------------------------
let dia = Int.random(in:1...7)
switch dia {
  case 1: print("Lunes")
  case 2: print("Martes")
  case 3: print("Miercoles")
  case 4: print("Jueves")
  case 5: print("Viernes")
  case 6: print("Sabado")
  case 7: print("Domingo")
  default: print("Dia no existe")
}

//case puede ser declarado como case 10...14: o case 10..<14:

--------------------------------------------------------------
var numero = 90
switch numero
{
  case 0...25: print("Primer cuarto")
  case 26..<76: print("Segun y tercer cuarto")
  case 76...100 where numero + 10 >= 100: print("Funcion especial")
  default: print("Fuera de rango")
}
--------------------------------------------------------------
var numero = 54
switch numero
{
  case 0...25: print("Primer cuarto")
  case 26..<76: print("Segun y tercer cuarto") fallthrough
  case 76...100 where numero + 10 >= 100: print("Funcion especial")
  default: print("Fuera de rango")
}
--------------------------------------------------------------
let x = 15
let y = 20
if x == y {
  print("\(x) igual a \(y): \(x*y)")
} else if x > y {
  print("\(x) es mayor a \(y): \(x-y)")
  } else {
  print("\(x) es menor a \(y): \(x+y)")
  }

--------------------------------------------------------------
for numero in 1...10
{
  print("El valor del numero es: ",numero)
}
--------------------------------------------------------------
var pares=0,impares=0
for numero in 1...7
{
  if numero % 2 == 0
  {
    print("El numero \(numero) es par")
    pares+=1
  }else{
    print("El numero \(numero) es impar")
    impares+=1
  }
}
print("Pares = \(pares) \nImpares = \(impares)")
--------------------------------------------------------------
var pares=0,impares=0
for numero in (1...7).reversed()
{
  if numero % 2 == 0
  {
    print("El numero \(numero) es par")
    pares+=1
  }else{
    print("El numero \(numero) es impar")
    impares+=1
  }
}
print("Pares = \(pares) \nImpares = \(impares)")
--------------------------------------------------------------
for _ in 1...100{
  print("Donitas")
}
--------------------------------------------------------------
for i in 1...100 where i % 2 == 0{
  print("Numero: ",i)
}
--------------------------------------------------------------
//Stride va del 1 al 9, no considera el tope
for x in stride(from:1, to:10, by:2){
  print(x)
}
--------------------------------------------------------------
for w in stride(from:10, to:0, by:-1){
  print(w)
}
--------------------------------------------------------------
for i in 1...5{
  if i < 5{
    print("\(i)", terminator:",")
  }
  else{
    print("\(i)", terminator:" ")
  }
}
--------------------------------------------------------------
for i in 1...5{
  if i == 2{
    continue //detiene la vuelta, es decir que no imprime el 2
  }
  print(i)

  if i == 4{
    break //termina el ciclo
  } 
}
--------------------------------------------------------------
var val = 5
while val < 10{
  print(val)
  val += 1
}
--------------------------------------------------------------
var val = 5
repeat{
  print(val)
  val += 1
}while val < 10
--------------------------------------------------------------
//Condicional
let a = 21, b = 3
print("a: \(a)  b: \(b)")
if (a % b == 0){
    print("Divisible")
}else{
    print("No Divisible")
}
--------------------------------------------------------------
let Tocino = 2
let Blanquillos = 23
if Tocino < 7 && Blanquillos < 21{
  print("Ambos se pueden cocinar")
}
else if Tocino > 7 && Blanquillos > 21 {
  print("Debe desechar ambos")
}
else if Blanquillos > 21 {
  print("Debe desechar los blanquillos")
}
else{
  print("Debe desechar el tocino")
}
--------------------------------------------------------------
let year = 2000
if year % 4 == 0{
  print("Es bisiesto")
} else{
  print("No es bisiesto")
}
--------------------------------------------------------------
let minutos = 15
var extra = 0
if minutos <= 3{
  print("Costo: $5 pesos")
}
else{
  extra = minutos - 3
  extra = (extra * 3) + 5
  print("Costo: $\(extra) pesos") 
}
--------------------------------------------------------------
var x = 1, mayor = 0, menor = 51, promedio = 0.0, encontradoMayor = false, encontradoMenor = false
let n1 = Int.random(in: 1...50), n2 = Int.random(in: 1...50), n3 = Int.random(in: 1...50), n4 = Int.random(in: 1...50), n5 = Int.random(in: 1...50)

while x <= 5{
  switch x{
    case 1: mayor = n1; menor = n1
    case 2: if n2 > mayor {mayor = n2} else if n2 < menor {menor = n2} 
    case 3: if n3 > mayor {mayor = n3} else if n3 < menor {menor = n3} 
    case 4: if n4 > mayor {mayor = n4} else if n4 < menor {menor = n4} 
    case 5: if n5 > mayor {mayor = n5} else if n5 < menor {menor = n5} 
    default: print("Error")
  }
  x+=1
}
print("Numeros: \(n1), \(n2), \(n3), \(n4), \(n5) \nMayor: \(mayor)  Menor: \(menor)")

print("Numeros restantes:")
if n1 != mayor && n1 != menor {print(n1, terminator:" ")} else if n1 == mayor && encontradoMayor == false {encontradoMayor = true} else if n1 == menor && encontradoMenor == false {encontradoMenor = true}
if n2 != mayor && n2 != menor {print(n2, terminator:" ")} else if n2 == mayor && encontradoMayor == false {encontradoMayor = true} else if n2 == menor && encontradoMenor == false {encontradoMenor = true}  else {print(n2, terminator:" ")}
if n3 != mayor && n3 != menor {print(n3, terminator:" ")} else if n3 == mayor && encontradoMayor == false {encontradoMayor = true} else if n3 == menor && encontradoMenor == false {encontradoMenor = true}  else {print(n3, terminator:" ")}
if n4 != mayor && n4 != menor {print(n4, terminator:" ")} else if n4 == mayor && encontradoMayor == false {encontradoMayor = true} else if n4 == menor && encontradoMenor == false {encontradoMenor = true}  else {print(n4, terminator:" ")}
if n5 != mayor && n5 != menor {print(n5, terminator:" ")} else if n5 == mayor && encontradoMayor == false {encontradoMayor = true} else if n5 == menor && encontradoMenor == false {encontradoMenor = true}  else {print(n5, terminator:" ")}

promedio = Double(n1 + n2 + n3 + n4 + n5 - mayor - menor) / 3
print("\nPromedio: \(String(format: "%.2f", promedio))") 
--------------------------------------------------------------
var precios = [Double]()
var preciosDos: [Double] = []
print("Precios: \(precios) \nPreciosDos: \(preciosDos)\n")

let numerosImpares = [1,3,5,7,9,11,13,15]
print(numerosImpares)

var nombres = ["Gustavo", "David", "Rodolfo", "Fermin", "Belen", "Alan", "Josue","Gerado"]
print(nombres)

print("El total de elementos en el vector nombres es: \(nombres.count)\n")

print("El nombre en la posicion 3 es \(nombres[3])")

print("\(numerosImpares[2...5])")

nombres.sort()
print(nombres,"\n\n")

var vectorRellenado = Array(repeating: "SSDD", count: 10)
print(vectorRellenado,"\n\n")

for nombre in nombres{
    print(nombre)
}

var vector: [Int] = [4,5,23,10,0,74,3,9,6]
print("\n\(vector)\n")

var maximo = 0
for num in vector{
    if num > maximo { maximo = num }
}
print("El numero mayor es: \(maximo)")

//vector.sort()
//print("El numero mayor es: \(vector[vector.count-1])")

let max = vector.max()!
print("Mayor = \(vector.max()!)")
print("Menor = \(vector.min()!)")

let posicion = vector.firstIndex(of: max)!
print("La celda del numero \(max) es: \(posicion)")

print("Primero = \(vector[0]) y el ultimo = \(vector[vector.count-1])")

print("\nPrimero(funcion) = \(vector.first!) y el ultimo(funcion) = \(vector.last!)")
--------------------------------------------------------------
var precios = [Double]()
print(precios)

//Agregar elementos uno a uno
precios.append(34.56)
precios.append(89.65)
precios.append(19.99)
precios.append(4.68)
precios.append(26.35)
precios.append(49.02)
print(precios)

//Agregar elementos en grupo
precios.append(contentsOf:[76.12,89.99,28,45.08])
print("\n",precios)

//Imprimir por rangos
print("\n",precios[3...5])
print("\n")

//Recorrido del vector
for precios in precios{
    print(precios)
}

print("\n")
for celda in stride(from:0, to:precios.count, by:1){
    print(precios[celda])
}
print("\n")

var celda = 0
while celda < precios.count{
    print(precios[celda])
    celda+=1
}
print("\n")

celda = 0
repeat{
    print(precios[celda])
    celda+=1
}
while celda < precios.count
print("\n")

//Agregar elementos en cualquier posicion
precios.insert(67.45,at:4)
print(precios, "celdas = \(precios.count)")

//Eliminar celda
precios.remove(at:9)
print(precios, "celdas = \(precios.count)")

//Actualizar celdas
precios[5] = 10
print(precios, "celdas = \(precios.count)")

//Reemplazar
precios[2...5] = [10,20,30,40]
print(precios, "celdas = \(precios.count)")
--------------------------------------------------------------
var n  = 7
var num = 1
repeat{
    print(num * num)
    num+=1
}
while num <= n
--------------------------------------------------------------
var numero = 1, n = 12, num = 1
while num <= n{
    print(numero, terminator:" ")
    print(n, terminator:" ")
    numero+=1
    n-=1
    num+=1
}
--------------------------------------------------------------
var grupoA = ["Josue","Daniel","Rodolfo"]
print("Grupo A: \(grupoA)")

var grupoB = ["David","Gustavo","Angel"]
print("Grupo B: \(grupoB)")

grupoA.append(contentsOf:grupoB)
print("Alumnos: \(grupoA)")
--------------------------------------------------------------
//Arreglos bidimensionales
var numeros = [[Int]]()
//var lista: [[Int]] = []

var secuencia = 10
let row = 5, col = 3
for _ in 0..<row{
    var newRow = [Int]()
    for _ in 0..<col{
        newRow.append(secuencia)
        secuencia+=1
    }
    print("Renglon",newRow)
    numeros.append(newRow)
}

print("\n\(numeros)")
print("\n\(numeros.count)")
print("\n")

//Recorrer la matriz
for ren in 0...numeros.count-1  { //filas
    for col in 0...numeros[ren].count-1 { //columnas
        print(numeros[ren][col],terminator:" ")
    }
    print(" ")
}

print("\n")
for array in numeros {
    for value in array {
        print(value, terminator:" ")
    }
    print(" ")
}

let irregular : [[Int]] = [[1,2],[3,4,0],[5,6],[7]]
print("\n")
for ren in 0...irregular.count-1  { //filas
    for col in 0...irregular[ren].count-1 { //columnas
        print(irregular[ren][col],terminator:" ")
    }
    print(" ")
}

print("\n")
for array in irregular {
    for value in array {
        print(value, terminator:" ")
    }
    print(" ")
}
--------------------------------------------------------------
let A = [1, 2, 3, 10, 100], B = [1,2,3,4,5,6] //[1,2,3,4,5,6] [5,2,3,10,13] [5,6]
var celda = 0
repeat {
    if B.contains(A[celda]) {
        print(A[celda])
    }
    celda += 1
} while celda < A.count
--------------------------------------------------------------
//Tuplas
var persona = ("Karla","Rodriguez","Lopez")
//formas para hacer referencia a cada valor
var nombre = persona.0
var appaterno = persona.1
var apmaterno = persona.2
print(persona)
print("\(nombre) \(appaterno) \(apmaterno)")
--------------------------------------------------------------
var persona2 = (nombre: "Karla", appaterno: "Rodriguez", 
                apmaterno: "Rodriguez", edad:27, carrera:"ISC", titulado: false)
var(nombre,appaterno, apmaterno, edad, carrera, titulado) = persona2
//var(_,_,_,_,carrera,_) = persona2
print("\(nombre) \(appaterno) \(apmaterno) \(edad) \(carrera) \(titulado)")

//var alumno :(String,Int) = ("Juan Perez",19)
//var alumno2:(nombre:String,edad:Int)=("Juan Perez",19)
--------------------------------------------------------------
var (a,b,c) = (1,2,3)
print(a,b,c)
--------------------------------------------------------------
func Mensaje(){
    print("Mensaje")
}
Mensaje()

func Cancion(nombre: String){
    print("José Madero - \(nombre)")
}
Cancion(nombre:"SSDD")
print("\n")

func Par(numero:Int)->Bool{
    if(numero % 2 == 0){
        return true
    }else{
        return false
    }
}
let par = Par(numero:10)
let par2 = Par(numero:3)
print(par)
print(par2)
print("\n")

func suma(a:Int,b:Int)->Int{
    return a + b
}
print(suma(a:1960,b:20))

func suma2(_ a:Int,_ b:Int)->Int{
    return a + b
}
print(suma2(1960,20))
print("\n")

func cuentaProgresiva(desde a:Int,hasta b:Int){
    for i in a...b{
        print(i,terminator:" ")
    }
}
cuentaProgresiva(desde:1, hasta:19)
print("\n")

func cuentaRegresiva(desde a:Int,hasta b:Int = 5){
    for i in (b...a).reversed(){
        print(i,terminator:" ")
    }
}
cuentaRegresiva(desde:19, hasta:1)
print("\n")
cuentaRegresiva(desde:19)
print("\n")

func Operaciones(_ numero1:Int,_ numero2:Int)->(multi:Int,div:Int){ 
    let multiplicacion = numero1 * numero2
    var division = 0
    if numero2 != 0{
        division = numero1/numero2
    }
    return(multiplicacion,division)
}

print(Operaciones(10,2))
let resultado = Operaciones(10,2)
print("Multiplicacion = \(resultado.multi) Division = \(resultado.div)")
--------------------------------------------------------------
let n = 14; var numero = [Int](), i = 1, suma = 0, celda = 0 
while i <= n{
    if i == 1{numero.append(i)} else if i == 2{ numero.append(1)}
    else{suma = numero[i-3] + numero[i-2]; numero.append(suma)}
    i+=1
}
while celda < numero.count {
    print(numero[celda], terminator: celda < numero.count - 1 ? "," : ""); celda += 1
}
--------------------------------------------------------------
var Arreglo: [Int] = [5,6,10,1,42,42,19] //[52,49,86,34,99,57,32]
print("Menor: \(Arreglo.min()!) \nMayor: \(Arreglo.max()!)")
--------------------------------------------------------------
var Arreglo: [Int] = [52,49,86,34,99,57,32] //[5,6,10,1,42,42,19]
for celda in Arreglo.reversed() {
    print(celda)
}
--------------------------------------------------------------
var Arreglo: [Int] = [5,6,10,1,42,42,19] //[52,49,86,34,99,57,32]
print(Array(Arreglo.reversed()))
--------------------------------------------------------------
let A : [[Int]] = [[3,5,8,2],[2,7,9,5],[2,8,9,2],[4,6,7,1]]
var DP = [Int](),DI = [Int](), celda = 0
for ren in 0...A.count-1  { //filas
    for col in 0...A[ren].count-1 { //columnas
        if ren == col {DP.append(A[ren][col])}
        else if ren == 0 && col == 3 {
            DI.append(A[ren][col])
            DI.append(A[ren+1][col-1])
            DI.append(A[ren+2][col-2])
            DI.append(A[ren+3][col-3])
        }
        print(A[ren][col],terminator:" ")
    }
    print(" ")
}
print("---")
for celda in DP {
    print(celda)
}
print("---")
for celda in DI {
    print(celda)
}
--------------------------------------------------------------
let A = [[1,5,6,2,7],[8,7,1,8,3],[4,5,6,0,3],[7,2,3,1,9],[6,0,4,5,2]]
var Sumar = [Int](), Suma = 0
for ren in 0...A.count-1  { //filas
    for col in 0...A[ren].count-1 { //columnas
        if ren > 0 && ren < 4 && col > 0 && col < 4{
            Sumar.append(A[ren][col])
        }
        print(A[ren][col],terminator:" ")
    }
    print(" ")
}
Suma = Sumar.reduce(0, +); print("--- \n\(Suma)")
--------------------------------------------------------------
//Clases
class Persona{
    //Clase sin constructor, debe inicializar las variables 
    var nombre:String = ""
    var apPaterno:String = ""
    var apMaterno:String = ""

    func mostrarDatos() -> String{
        return "\(nombre) \(apPaterno) \(apMaterno)"
    }
}

//Crear Objetos por inferencia
let miPersona = Persona()
miPersona.nombre = "Gustavo"
miPersona.apPaterno = "Flores"
miPersona.apMaterno = "De la Cruz"
print(miPersona.mostrarDatos())

//Indicando el tipo de dato
let otraPersona:Persona = Persona()
otraPersona.nombre = "Jesus Daniel"
otraPersona.apPaterno = "Esquivel"
otraPersona.apMaterno = "Ortega"
print(otraPersona.mostrarDatos())

class PersonaC{ 
    var nombre:String 
    var apPaterno:String 
    var apMaterno:String 

    //Constructor sin parametros
    init(){
        nombre = ""
        apPaterno = ""
        apMaterno = ""
    }

    //Constructor con parametros
    init(_ nombre:String,_ apP:String,_ apM:String){
        self.nombre = nombre
        apPaterno = apP
        apMaterno = apM
    }
    
    
    func mostrarDatos() -> String{
        return "\(nombre) \(apPaterno) \(apMaterno)"
    }
}

let personaConstructor = PersonaC()
//Mandar parametros
//let personaParametro = PersonaC(nombre: "Josue", apP: "Garcia", apM: "Maldonado") sin ______
let personaParametro = PersonaC("Josue","Garcia","Maldonado")
print("Datos del constructor: \(personaConstructor.mostrarDatos())")
print("Datos con parametros: \(personaParametro.mostrarDatos())")

class PersonaS{
    //Darle seguridad
    private var nombre:String 
    private var apPaterno:String 
    private var apMaterno:String 

    //Constructor sin parametros
    init(){
        nombre = ""
        apPaterno = ""
        apMaterno = ""
    }

    //Constructor con parametros
    init(_ nombre:String,_ apP:String,_ apM:String){
        self.nombre = nombre
        apPaterno = apP
        apMaterno = apM
    }

    //Propiedades
    var Nombre:String{
        get {return nombre}
        set{nombre = newValue}
    }
    var Appaterno:String{
        get {return apPaterno}
        set{apPaterno = newValue}
    }
    var Apmaterno:String{
        get {return apMaterno}
        set{apMaterno = newValue}
    }
    
    //Metodos
    func mostrarDatos() -> String{
        return "\(nombre) \(apPaterno) \(apMaterno)"
    }
}
let personaSegura = PersonaS("Rodolfo","Assam","Mendez")
print(personaSegura.mostrarDatos())
personaSegura.Nombre = "Rodolfo Zahir"
print(personaSegura.mostrarDatos())
--------------------------------------------------------------
class Alumno{
    //Atributos
    private var nombre:String
    private var edad:Int
    private var promedio:Double
    private var materias:[String]

    //Constructor
    init(_ nombre:String,_ edad:Int,_ prom:Double,_ listaMaterias:[String]){
        self.nombre = nombre
        self.edad = edad
        promedio = prom
        materias = listaMaterias
    }

    //Propiedades
    var Nombre:String{
        get{return nombre}
        set{nombre = newValue}
    }
    var Edad:Int{
        get{return edad}
        set{edad = newValue}
    }
    var Promedio:Double{
        get{return promedio}
        set{promedio = newValue}
    }
    var Materias:[String]{
        get{return materias}
        set{materias = newValue}
    }

    //funcion 
    func MostrarDatos() -> String {
        let datos = "Nombre: \(nombre) Edad: \(edad) Promedio: \(promedio)  Materias: \(materias)"
        return datos
    }
}

class AlumnoSistemas:Alumno{
    // Atributos adicionales
    private var especialidad: String = ""
    private var totalSimposiums: Int = 0
    private var graduado: Bool = false

    // Constructor modificado
    init(_ nombre: String, _ edad: Int, _ prom: Double, _ listaMaterias: [String], _ especialidad: String) {
        super.init(nombre, edad, prom, listaMaterias)
        self.especialidad = especialidad
    }
    
    func AsistenciaSimposium(){
        totalSimposiums += 1
    }
    
    // Método para actualizar la variable graduado
    func Graduarse(graduacion: Bool) {
        graduado = graduacion
    }

    // Sobreescribir función MostrarDatos() para incluir los nuevos atributos
    override func MostrarDatos() -> String {
        var datosBase = super.MostrarDatos()
        datosBase += "\nEspecialidad: \(especialidad) \nTotal de Simposiums: \(totalSimposiums) \nGraduado?: \(graduado)"
        return datosBase
    }
}

let unAlumnoISC = AlumnoSistemas("Gerardo Torres", 20, 85.89, ["Redes","TSO","Simulacion","iOS","Android"],"Desarrollo")
print(unAlumnoISC.MostrarDatos(),"\n")
unAlumnoISC.AsistenciaSimposium()
unAlumnoISC.AsistenciaSimposium()
unAlumnoISC.AsistenciaSimposium()
print(unAlumnoISC.MostrarDatos(),"\n")
unAlumnoISC.Graduarse(graduacion:true)
print(unAlumnoISC.MostrarDatos(),"\n")
--------------------------------------------------------------
class Rectangulo{
    var largo:Double = 0.0
    var ancho:Double = 0.0

    //Constructor con parametros
    init(_ largo:Double,_ ancho:Double){
        self.largo = largo
        self.ancho = ancho
    }
    //Propiedades
    var Largo:Double{
        get {return largo}
        set{largo = newValue}
    }
    var Ancho:Double{
        get {return ancho}
        set{ancho = newValue}
    }

    func CalcularArea()->Double{
        let area = ancho * largo
        return area
    }
}

let Pared = Rectangulo(3,3) //(10,5) (3,3)
let Ventana = Rectangulo(1,1) //(2,1) (1,1)
var Pintar = Pared.CalcularArea() - Ventana.CalcularArea(), Tiempo = Pintar * 10
print("Se va tardar \(Tiempo) minutos")
--------------------------------------------------------------
class Figura{
    func CalcularArea() -> Double{return 0}
}

class Rectangulo:Figura{
    private var largo: Double
    private var ancho: Double

    //Constructor con parametros
    init(_ largo:Double,_ ancho:Double){
        self.largo = largo
        self.ancho = ancho
    }
    
    //Propiedades
    var Largo:Double{
        get {return largo}
        set{largo = newValue}
    }
    var Ancho:Double{
        get {return ancho}
        set{ancho = newValue}
    }

    override func CalcularArea() -> Double {
        return Largo * Ancho
    }
}

class Circunferencia:Figura{
    private var radio: Double

    //Constructor con parametros
    init(_ radio:Double){
        self.radio = radio
    }

    //Propiedades
    var Radio:Double{
        get {return radio}
        set{radio = newValue}
    }

    override func CalcularArea() -> Double {
        return Double.pi * (Radio*Radio)
    }
}

class Triangulo:Figura{
    private var altura: Double
    private var base: Double

    //Constructor con parametros
    init(_ altura:Double,_ base:Double){
        self.altura = altura
        self.base = base
    }
    
    //Propiedades
    var Altura:Double{
        get {return altura}
        set{altura = newValue}
    }
    var Base:Double{
        get {return base}
        set{base = newValue}
    }

    override func CalcularArea() -> Double {
        return (altura * base)/2
    }
}

let miRentangulo = Rectangulo(6,8) //(6,8) (15,4)
let miCirculo = Circunferencia(14) //(14) (8)
let miTriangulo = Triangulo(4,3) //(4,3) (12,10)

print("Area del rectangulo: ",miRentangulo.CalcularArea())
print("Area del circulo: ",(miCirculo.CalcularArea() * 100).rounded() / 100)
print("Area del triangulo: ",miTriangulo.CalcularArea())
--------------------------------------------------------------
func Menor(_ Valor1:Int,_ Valor2:Int)->Int{
    if Valor1 > Valor2{
        return Valor2
    }else{
        return Valor1
    }
}
print(Menor(4,5))

func MayorMenor(_ Num1: Int, _ Num2: Int, _ Num3: Int) ->(mayor:Int,menor:Int) {
    var menor = Int.max
    var mayor = 0
    
    for n in [Num1, Num2, Num3] {
        if n > mayor {
            mayor = n
        }
        if n < menor {
            menor = n
        }
    }
    return(mayor,menor)
}
let resultado = MayorMenor(3, 4, 5)
print("Mayor: \(resultado.mayor) Menor: \(resultado.menor)")

func Tabla(_ numero:Int) {
    var n = 1
    while n <= 10{
        print("\(n) x \(numero) = \(numero*n)")
        n+=1
    }
}
Tabla(5)
--------------------------------------------------------------
//EXAMEN UNIDAD 2
//PARTE 1
var articulos = [Int](), precios = [Double](), importeTotal = [Double](), i = 0, n = 4, Operacion = 0.0
while i <= n{
    let Num = Double.random(in: 1.0...56.23)
    let NumDD = (Num * 100).rounded() / 100
    articulos.append(Int.random(in: 0...25))
    precios.append(Double(NumDD))
    i+=1
}

print("Articulos: \n\(articulos)")
print("Precios: \n\(precios)")
print("Operacion: \n\(articulos[0]) * \(precios[0])")
var operacion = Double(articulos[0]) * precios[0]
importeTotal.append((operacion * 100).rounded() / 100)
print("Importe total: \n\(importeTotal)")
//PARTE 2
class Vehiculo{
    //Atributos
    private var placas:String = ""
    private var tarifa:Double = 0.0

    //Propiedades
    var Placas:String{
        get{return placas}
        set{placas = newValue}
    }
    var Tarifa:Double{
        get{return tarifa}
        set{tarifa = newValue}
    }

    //Metodo
    func CalcularImporte() -> Double{
        return 0.0
    }
}

class Autobus:Vehiculo{
    //Atributos
    private var kmInicial:Int = 0
    private var kmFinal:Int = 0
    
    //Propiedades
    var KmInicial:Int{
        get{return kmInicial}
        set{kmInicial = newValue}
    }
    var KmFinal:Int{
        get{return kmFinal}
        set{kmFinal = newValue}
    }

    //Metodo
    override func CalcularImporte() -> Double{
        let kmPagar = kmFinal - kmInicial
        let Total = Double(kmPagar) * Tarifa
        return Total
    }
}

class Limosina:Vehiculo{
    //Atributos
    private var diasTotales:Int = 0
    //Propiedades
    var DiasTotales:Int{
        get{return diasTotales}
        set{diasTotales = newValue}
    }
    //Metodo
    override func CalcularImporte() -> Double{
        let Total = Double(diasTotales) * Tarifa
        return Total
    }
}
//Autobus
let miAutobus = Autobus()
miAutobus.Placas = "MCMLXXX"
miAutobus.Tarifa = 25.45
miAutobus.KmInicial = 20
miAutobus.KmFinal = 40
//Limosina
let miLimosina = Limosina()
miLimosina.Placas = "SSDD"
miLimosina.Tarifa = 150.46
miLimosina.DiasTotales = 4
print("----Ticket de renta----")
print("Tipo de vehiculo: Autobus \nPlacas: \(miAutobus.Placas) \nPrecio por km: \(miAutobus.Tarifa) \nKms a facturar: \(miAutobus.KmFinal - miAutobus.KmInicial) \nTotal a pagar \(miAutobus.CalcularImporte())")

print("----Ticket de renta----")
print("Tipo de vehiculo: Autobus \nPlacas: \(miLimosina.Placas) \nPrecio por dia: \(miLimosina.Tarifa) \nDias a facturar: \(miLimosina.DiasTotales) \nTotal a pagar \(miLimosina.CalcularImporte())")
--------------------------------------------------------------
--------------------------------------------------------------
REDONDEAR
import Foundation
func roundToDecimals(_ number: Double, decimals: Int) -> Double {
    let multiplier = pow(10.0, Double(decimals))
    return (number * multiplier).rounded() / multiplier
}

// Ejemplo de uso
let originalNumber = 3.14159
let roundedTo2Decimals = roundToDecimals(originalNumber, decimals: 2)
print(roundedTo2Decimals) // Imprime 3.14

let roundedTo3Decimals = roundToDecimals(originalNumber, decimals: 3)//Se puede cambiar el 3 por calquier numero
print(roundedTo3Decimals) // Imprime 3.142
```
