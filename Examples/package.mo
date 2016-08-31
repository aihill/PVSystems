package Examples "Application examples"
  extends Modelica.Icons.Library;
  import SI = Modelica.SIunits;


  annotation (
    Documentation(info="<html><p>Librer�a sencilla con elementos
      mec�nicos 1D. La librer�a est� estructurada en los siguientes 
      paquetes:</p>
      <ul>
        <li><b>Interfaces</b>: que incluye los puertos, anotaciones
          e interfaces usados por el resto de bloques, 
          fundamentalmente en el paquete <i>Elementos</i>.</li>
        <li><b>Elementos</b>: que incluye los elementos, con 
          anotaciones gr�ficas que facilitan su uso con programas 
          como Dymola, para la construcci�n de sistemas m�s 
        complejos.</li>
        <li><b>Ejemplos</b>: que incluye ejemplos de uso de los 
          elementos de la librer�a <i>Elementos</i> para construir
          sistemas m�s complejos.</li>
      </ul></html>"),
    uses(Modelica(version="1.6")));
end Examples;
