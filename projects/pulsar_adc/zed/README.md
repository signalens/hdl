# PULSAR_ADC HDL Project

  * Evaluation board product page: [EVAL-AD400x-FMCZ](https://www.analog.com/eval-ad400x-fmcz)
  * System documentation: https://wiki.analog.com/resources/eval/10-lead-pulsar-adc-evaluation-board
  * HDL project documentation: [locally](../../docs/projects/pulsar_adc/index.rst) or [online](https://wiki.analog.com/resources/eval/user-guides/pulsar_adc_pmods_hdl)

## Supported parts

| Part name                                   | Resolution | Description                                                      |
|---------------------------------------------|:----------:|:----------------------------------------------------------------:|
| [AD4000](https://www.analog.com/ad4000)     | 16-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs |
| [AD4001](https://www.analog.com/ad4001)     | 16-bit     | 2 MSPS/1 MSPS, Precision, Differential SAR ADCs|
| [AD4002](https://www.analog.com/ad4002)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs|
| [AD4003](https://www.analog.com/ad4003)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Easy Drive, Differential SAR ADCs|
| [AD4004](https://www.analog.com/ad4004)     | 16-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs|
| [AD4005](https://www.analog.com/ad4005)     | 16-bit     | 2 MSPS/1 MSPS, Precision, Differential SAR ADCs|
| [AD4006](https://www.analog.com/ad4006)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs|
| [AD4007](https://www.analog.com/ad4007)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Easy Drive, Differential SAR ADCs|
| [AD4008](https://www.analog.com/ad4008)     | 16-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs|
| [AD4010](https://www.analog.com/ad4010)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Precision, Pseudo Differential, SAR ADCs|
| [AD4011](https://www.analog.com/ad4011)     | 18-bit     | 2 MSPS/1 MSPS/500 kSPS, Easy Drive, Differential SAR ADCs|
| [AD4020](https://www.analog.com/ad4020)     | 20-bit     | 1.8 MSPS/1 MSPS/500 kSPS, Easy Drive, Differential SAR ADCs|
| [ADAQ4003](https://www.analog.com/adaq4003) | 18-bit     | 2 MSPS, Precision DAQ, Differential SAR ADCs|

## Building the project

:warning: Make sure that you set up your required ADC resolution in [../common/pulsar_adc_bd.tcl](../common/pulsar_adc_bd.tcl)

How to use overwritable parameter from the environment (**only on Zed**):

AD40XX_ADAQ400X_N:
  * 1 - EVAL-AD40XX-FMCZ (default option)
  * 0 - EVAL-ADAQ400x

```
// default option (1), building project for EVAL-AD40XX-FMCZ
hdl/projects/pulsar_adc/zed> make AD40XX_ADAQ400X_N

// building project for EVAL-ADAQ400x
hdl/projects/pulsar_adc/zed> make AD40XX_ADAQ400X_N=0
```
