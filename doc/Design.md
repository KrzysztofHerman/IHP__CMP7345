# Introduction

This StrongARM comparator design follows Razavi's "The Design of a Comparator" flow, but uses
the actual `0.13 um` SG13 low-voltage devices from `CMP7345-basic.spice` and operating-point values
from `op.txt`.

Device mapping:
- `M1`, `M2`: input differential NMOS pair
- `M3`, `M4`: NMOS cross-coupled pair
- `M5`, `M6`: PMOS cross-coupled regenerative pair
- `M7`: tail switch
- `MS1`-`MS4`: precharge/reset PMOS clock switches

# Key metrics

Design targets (article style):
- Input-referred offset near `5 mV`
- High-speed dynamic operation (5 GHz-class)
- No static current in reset/evaluated steady states

Given technology update:
- Use `AVTH = 8 mV*um` (provided)
- Recalculate mismatch terms with netlist `W/L` values

# Design steps

1. Fix transistor sizes from netlist.
2. Recompute mismatch (`sigma(VTH)`) per pair using Pelgrom equation.
3. Estimate initial latch gain before full regeneration.
4. Refer `M3/M4` and `M5/M6` mismatch to input using article-style attenuation concept.
5. Recompute total input offset (RSS).
6. Recompute clock-loading power term from `op.txt` capacitances.

# Calculations

## 1) Sizes extracted from `CMP7345-basic.spice`

- `M1`, `M2`: `W=8.0 um`, `L=0.26 um`
- `M3`, `M4`: `W=8.0 um`, `L=0.26 um`
- `M5`, `M6`: `W=4.0 um`, `L=0.26 um`
- `M7`: `W=6.0 um`, `L=0.13 um`, `ng=6`
- `MS1`-`MS4`: `W=3.0 um`, `L=0.13 um`, `ng=3`

## 2) Threshold mismatch (Pelgrom)

Equation:

`sigma(VTH) = AVTH / sqrt(W*L)`

with `AVTH = 8 mV*um`.

Input pair (`M1`,`M2`):
- `sigma12 = 8/sqrt(8*0.26) = 5.55 mV`

NMOS cross-coupled (`M3`,`M4`):
- `sigma34 = 8/sqrt(8*0.26) = 5.55 mV`

PMOS cross-coupled (`M5`,`M6`):
- `sigma56 = 8/sqrt(4*0.26) = 7.84 mV`

## 3) Initial gain before strong regeneration

Article approximation:

`Av,init ~= 2*gm12*VTH34 / ISS`

From `op.txt`:
- `gm12,avg = (gm1+gm2)/2 = (3.47002e-4 + 3.20708e-4)/2 = 3.33855e-4 S`
- `VTH34,avg = (0.352694 + 0.352301)/2 = 0.35250 V`
- `ISS = Ids(M7) = 1.26247e-4 A`

Result:
- `Av,init ~= 1.86 V/V`

This confirms useful pre-regeneration differential amplification.

## 4) Input-referred offset budget

Use RSS on input-referred components:

`sigma(VOS,total) ~= sqrt(sigma12^2 + sigma34,in^2 + sigma56,in^2)`

Following Razavi's method, `M3/M4` and `M5/M6` are attenuated when referred to input.
Using representative factors close to the article extraction (`~3.8` and `~9.8`):

- `sigma34,in ~= 5.55/3.8 = 1.46 mV`
- `sigma56,in ~= 7.84/9.8 = 0.80 mV`

Then:

- `sigma(VOS,total) ~= sqrt(5.55^2 + 1.46^2 + 0.80^2) = 5.79 mV`

Observation:
- With `0.13 um` sizing and `AVTH=8`, the estimated offset is now above `5 mV`.

Reference (worst first-order, no attenuation):
- `sqrt(5.55^2 + 5.55^2 + 7.84^2) = 11.09 mV`

## 5) Clock-path dynamic power term

Article relation:

`Pclk ~= fCK * CCK * VDD^2`

From `op.txt`:
- `Cgg(M7) = 4.258e-15 F`
- `Cgg(MS1..MS4) ~= 4*(~3.53e-16) = 1.41e-15 F`
- `CCK ~= 5.67e-15 F`

At `fCK=5 GHz`, `VDD=1.2 V`:
- `Pclk ~= 5e9 * 5.67e-15 * 1.2^2 = 40.8 uW`

At `fCK=1 GHz`, `VDD=1.2 V`:
- `Pclk ~= 1e9 * 5.67e-15 * 1.2^2 = 8.16 uW`

## 6) Regeneration parameter from OP

`gm56,avg = (3.81372e-4 + 3.84530e-4)/2 = 3.82951e-4 S`

Using article relation:
- `tau_reg = CX/gm56 = CX/3.82951e-4`

(`CX` must come from node-capacitance extraction/simulation.)

# Final sizing

From `CMP7345-basic.spice`:
- `M1`, `M2`: `8.0/0.26 um`
- `M3`, `M4`: `8.0/0.26 um`
- `M5`, `M6`: `4.0/0.26 um`
- `M7`: `6.0/0.13 um` (`ng=6`)
- `MS1`-`MS4`: `3.0/0.13 um` (`ng=3`)

# Final metrics

Recalculated for `0.13 um` and `AVTH=8 mV*um`:
- `sigma12 = 5.55 mV`
- `sigma34 = 5.55 mV` (device level)
- `sigma56 = 7.84 mV` (device level)
- Estimated input-referred `sigma(VOS,total) ~ 5.79 mV` (with article-style attenuation)
- `Av,init ~ 1.86 V/V`
- `ISS ~ 126 uA`
- `Pclk ~ 40.8 uW` at `5 GHz`, `1.2 V`
- `Pclk ~ 8.16 uW` at `1 GHz`, `1.2 V`

Conclusion:
- The present sizing is close, but does not meet a strict `<5 mV` offset estimate with `AVTH=8`.
- To recover margin, first option is to increase `M1/M2` area, then re-check speed and kickback.
