# PULSAR_ADC HDL Project

  * Evaluation board product page: [EVAL-AD400x-FMCZ](https://www.analog.com/eval-ad400x-fmcz)
  * System documentation: https://wiki.analog.com/resources/eval/10-lead-pulsar-adc-evaluation-board
  * HDL project documentation: [locally](../../docs/projects/pulsar_adc/index.rst) or [online](https://wiki.analog.com/resources/eval/user-guides/pulsar_adc_pmods_hdl)

## Supported parts

| Part name                                   | Resolution | Description                                                      |
|---------------------------------------------|:----------:|:----------------------------------------------------------------:|
| [AD7685](https://www.analog.com/ad7685)     | 16-bit     | 250 kSPS PulSAR ADC in MSOP/QFN|
| [AD7686](https://www.analog.com/ad7686)     | 16-bit     | 500 kSPS PulSAR A/D Converter in MSOP/QFN|
| [AD7687](https://www.analog.com/ad7687)     | 16-bit     | 1.5 LSB INL, 250 kSPS PulSAR Differential ADC in MSOP/QFN|
| [AD7688](https://www.analog.com/ad7688)     | 16-bit     | 500 kSPS Differential PulSAR A/D Converter in µSOIC/QFN|
| [AD7689](https://www.analog.com/ad7689)     | 16-bit     | 8-Channel, 250 kSPS PulSAR ADC|
| [AD7690](https://www.analog.com/ad7690)     | 18-bit     | 1.5 LSB INL, 400 kSPS PulSAR Differential ADC in MSOP/QFN|
| [AD7691](https://www.analog.com/ad7691)     | 18-bit     | 1.5 LSB INL, 250 kSPS PulSAR Differential ADC in MSOP/QFN|
| [AD7693](https://www.analog.com/ad7693)     | 16-bit     | ±0.5 LSB, 500 kSPS PulSAR Differential A/D Converter in MSOP/QFN|
| [AD7942](https://www.analog.com/ad7942)     | 14-bit     | 250 kSPS PulSAR, Pseudo Differential ADC in MSOP/LFCSP|
| [AD7946](https://www.analog.com/ad7946)     | 14-bit     | 500 kSPS PulSAR ADC in MSOP|
| [AD7980](https://www.analog.com/ad7980)     | 16-bit     | 1 MSPS, PulSAR ADC in MSOP/LFCSP|
| [AD7983](https://www.analog.com/ad7983)     | 16-bit     | 1.33 MSPS PulSAR ADC in MSOP/LFCSP|
| [AD7988-1](https://www.analog.com/ad7988-1) | 16-bit     | Lower Power PulSAR ADCs in MSOP/LFCSP|
| [AD7988-5](https://www.analog.com/ad7988-5) | 16-bit     | Lower Power PulSAR ADCs in MSOP/LFCSP|

## Building the project

:warning: Make sure that you set up your required ADC resolution in [../common/pulsar_adc_bd.tcl](../common/pulsar_adc_bd.tcl)

```
hdl/projects/pulsar_adc/coraz7s> make
```
