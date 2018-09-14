# Carga de Camiones
Una empresa de transporte quiere administrar mejor las cargas que lleva en su camión.
Para eso requiere un sistema que le permita planificar qué cosas debe llevar el camión sin sobrepasar su capacidad.

De cada cosa que se transporte debemos conocer su nivel de peligrosidad. Este nivel es usado para impedir que cosas que superen cierto nivel de
peligrosidad circulen en determinadas rutas.

## Parte 1: Cosas a transportar
De las cosas que puede transportar el camión nos interesa el peso y la peligrosidad:

* Knight Rider: pesa 500 kilos y su nivel de peligrosidad es 10 puntos.
* Bumblebee: pesa 800 kilos y su nivel de peligrosidad es 15 si está transformado en auto o 30 si está en su forma de robot.
* Paquete de ladrillos: cada ladrillo pesa 2 kilos, la cantidad de ladrillos que tiene puede variar. La peligrosidad es siempre de dos puntos.

## Parte 2: El camión y el depósito
La empresa tiene un único camión, al que por ahora queremos poder
* cargarle una cosa,
* descargarle una cosa
* preguntarle si tiene cargado una cosa, por ejemplo si tiene cargado el paquete de ladrillos.

La empresa también tiene un depósito, que guarda cosas. El depósito guarda las cosas hasta que llega un camión. El depósito debe permitir recibir un camión y al hacerlo se toman una por una las cosas que están en el depósito y se las carga en el camión.

## Parte 3: Agregados al camión
Carga máxima:
* Calcular la carga actual del camión, es decir, la suma de los pesos de las cosas cargadas en el camión.
* Calcular la carga disponible del camión, es decir, la diferencia entre la carga máxima (que es un valor configurable) y la carga actual.
* Saber si un camión puede aceptar una cosa, es decir si al cargar esa cosa no se superaría la carga máxima.
* Modificar la carga del camión para que sólo se cargue si puede hacerse.
* Atención: asegurarse de que funciona también cuando el camión llega al depósito.

Peligrosidad:
* Saber cuál es la cosa más peligrosa que tiene un camión.
* Saber si un camión puede circular por una ruta, dado el nivel de peligrosidad máximo de la ruta. Por ejemplo, queremos poder preguntar si un camión puede circular en una ruta cuyo límite de peligrosidad es 10. Para eso tiene que pasar que ningún elemento del camión supera los 10 puntos de peligrosidad.

## Parte 4: Más cosas para transportar
* Contenedor portuario: Un contenedor puede tener otras cosas adentro. El peso es 100 + la suma de todas las cosas que esté adentro. Es tan peligroso como el objeto más peligroso que contiene. Si está vacío es 0.
* Embalaje de seguridad: Es una cobertura que envuelve a cualquier otra cosa. El
peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad del nivel de peligrosidad de lo que envuelve.

## Parte 5: Motoneta
La empresa adquirió un segundo transporte: una motoneta. La motoneta puede cargar hasta 100 kilogramos y sólo puede llevar cosas que tengan hasta 5 puntos de peligrosidad. Asegurarse de que el depósito la pueda cargar al llegar.