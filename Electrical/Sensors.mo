package Sensors 
  
  extends Modelica.Icons.Library;
  
  annotation (
    Window(
      x=0.03,
      y=0.04,
      width=0.50,
      height=0.24,
      library=1,
      autolayout=1),
    Documentation(info="<html>
<p>
This package contains potential, voltage, and current sensors.
</p>

<dl>
<dt>
<b>Main Authors:</b>
<dd>
<a href=\"http://people.eas.iis.fhg.de/Christoph.Clauss/\">Christoph Clau&szlig;</a>
    &lt;<a href=\"mailto:clauss@eas.iis.fhg.de\">clauss@eas.iis.fhg.de</a>&gt;<br>
    <a href=\"http://people.eas.iis.fhg.de/Andre.Schneider/\">Andr&eacute; Schneider</a>
    &lt;<a href=\"mailto:schneider@eas.iis.fhg.de\">schneider@eas.iis.fhg.de</a>&gt;<br>
    Fraunhofer Institute for Integrated Circuits<br>
    Design Automation Department<br>
    Zeunerstra&szlig;e 38<br>
    D-01069 Dresden<br>

<p>
<dt>
<b>Version:</b>
<dd>
$Id: Sensors.mo,v 1.12 2004/06/30 14:50:11 Dag Exp $<br>
<p>
<dt>
<b>Copyright:</b>
<dd>
Copyright &copy; 1998-2002, Modelica Association and Fraunhofer-Gesellschaft.<br>
<i>The Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> in the documentation of package
Modelica in file \"Modelica/package.mo\".</i><br>
<p>
</dl>
</HTML>
"));
  
  model PotentialSensor "Sensor to measure the potential" 
    extends Interfaces.AbsoluteSensor;
    SI.ElectricPotential phi "Absolute voltage potential";
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100],
        grid=[1, 1],
        component=[20, 20]),
      Icon(Text(
          extent=[-29, -11; 30, -70],
          string="V",
          style(color=0))),
      Window(
        x=0.4,
        y=0.32,
        width=0.6,
        height=0.6));
  equation 
    p.i = 0;
    phi = p.v;
    phi = outPort.signal[1];
  end PotentialSensor;
  
  model VoltageSensor "Sensor to measure the voltage between two pins" 
    extends Interfaces.RelativeSensor;
    SI.Voltage v "Voltage between pin p and n (= p.v - n.v)";
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100],
        grid=[1, 1],
        component=[20, 20]),
      Window(
        x=0.28,
        y=0.29,
        width=0.6,
        height=0.6),
      Icon(Text(
          extent=[-29, -11; 30, -70],
          string="V",
          style(color=0))));
  equation 
    p.i = 0;
    n.i = 0;
    v = p.v - n.v;
    v = outPort.signal[1];
  end VoltageSensor;
  
  model CurrentSensor "Sensor to measure the current in a branch" 
    extends Interfaces.RelativeSensor;
    SI.Current i "current in the branch from p to n";
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100],
        grid=[1, 1],
        component=[20, 20]),
      Window(
        x=0.23,
        y=0.07,
        width=0.6,
        height=0.6),
      Icon(Text(
          extent=[-29, -11; 30, -70],
          string="A",
          style(color=0))));
  equation 
    p.v = n.v;
    p.i = i;
    n.i = -i;
    i = outPort.signal[1];
  end CurrentSensor;
  
end Sensors;
