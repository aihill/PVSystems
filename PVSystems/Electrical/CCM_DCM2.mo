within PVSystems.Electrical;
model CCM_DCM2 "Average CCM-DCM model with no losses and transformer"
  extends Interfaces.SwitchNetworkInterface;
  parameter Modelica.SIunits.Inductance Le "Equivalent DCM inductance";
  parameter Modelica.SIunits.Frequency fs "Switching frequency";
  parameter Real n(final unit="1") = 1
    "Transformer turns ratio 1:n (primary:secondary)";
protected
  Real mu "Effective switch conversion ratio";
  Real Re "Equivalent DCM port 1 resistance";
equation
  Re = 2*Le*fs/d^2;
  mu = max(d, 1/(1 + Re*i1/v2));
  v1 = (1 - mu)*v2/mu/n;
  -i2 = (1 - mu)*i1/mu/n;
end CCM_DCM2;
