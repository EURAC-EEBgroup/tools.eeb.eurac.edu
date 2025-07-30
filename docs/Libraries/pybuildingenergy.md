# pyBuildingEnergy

<figure markdown="span">
  ![Image title](../imgs/pybuildingenergy/pybuildingenergy.png){ width="800" }
  <figcaption>pyBuildingEnergy Logo </figcaption>
</figure>

## Citation

Please cite us if you use the library

[![DOI](https://zenodo.org/badge/761715706.svg)](https://zenodo.org/doi/10.5281/zenodo.10887919)

## Features

The new EPBD recast provides an update on building performance assessment through a methodology that must take into account various aspects such as the thermal characteristics of the building, the use of energy from renewable sources, building automation and control systems, ventilation, cooling, energy recovery, etc.

The methodology should represent the actual operating conditions, allow for the use of measured energy for accuracy and comparability purposes, and be based on hourly or sub-hourly intervals that take into account the variable conditions significantly impacting the operation and performance of the system, as well as internal conditions.

The energy performance of a building shall be expressed by a numeric indicator of primary energy use per unit of reference floor area per year, in kWh/(m².y) for the purpose of both energy performance certification and compliance with minimum energy performance requirements. Numeric indicators of final energy use per unit of reference floor area per year, in kWh/(m².y) and of energy needs according to ISO 52000 in kWh/(m².y) shall be used. The methodology applied for the determination of the energy performance of a building shall be transparent and open to innovation and reflect best practices, in particular from additional indicators.

Member States shall describe their national calculation methodology based on Annex A of the key European standards on energy performance of buildings, namely EN ISO 52000-1, EN ISO 52003-1, EN ISO 52010-1, EN ISO 52016-1, EN ISO 52018-1, EN 16798-1, EN 52120-1 and EN 17423 or superseding documents. This provision shall not constitute a legal codification of those standards.

**pyBuildingEnergy** aims to provide an assessment of building performance both in terms of energy and comfort. In this initial release, it is possible to assess the energy performance of the building using ISO 52106-1:2018. Additional modules will be added for a more comprehensive evaluation of performance, assessing ventilation, renewable energies, systems, etc.

### Current Calculation Methods

The actual calculation methods for the assessment of building performance are the following:

- ✅ The (sensible) energy need for heating and cooling, based on hourly or monthly calculations
- ❌ The latent energy need for (de-)humidification, based on hourly or monthly calculations
- ✅ The internal temperature, based on hourly calculations
- ✅ The sensible heating and cooling load, based on hourly calculations
- ❌ The moisture and latent heat load for (de-)humidification, based on hourly calculations
- ❌ The design sensible heating or cooling load and design latent heat load using an hourly calculation interval
- ❌ The conditions of the supply air to provide the necessary humidification and dehumidification

The calculation methods can be used for residential or non-residential buildings, or a part of it, referred to as "the building" or the "assessed object".

ISO 52016-1:2018 also contains specifications for the assessment of thermal zones in the building or in the part of a building. The calculations are performed per thermal zone. In the calculations, the thermal zones can be assumed to be thermally coupled or not.

ISO 52016-1:2018 is applicable to buildings at the design stage, to new buildings after construction and to existing buildings in the use phase.

## Weather Data

The tool can use weather data coming from 2 main sources:

- **pvgis api** (https://re.jrc.ec.europa.eu/pvg_tools/en/) - PHOTOVOLTAIC GEOGRAPHICAL INFORMATION SYSTEM
- **.epw file** from https://www.ladybug.tools/epwmap/

More details in the example folder.

## Domestic Hot Water - DHW

- ✅ Calculation of volume and energy need for domestic hot water according to ISO 12831-3
- ❌ Assessment of thermal load based on the type of DHW system

## Limitations

The library is developed with the intent of demonstrating specific elements of calculation procedures in the relevant standards. It is not intended to replace the regulations but to complement them, as the latter are essential for understanding the calculation.

This library is meant to be used for demonstration and testing purposes and is therefore provided as open source, without protection against misuse or inappropriate use.

The information and views set out in this document are those of the authors and do not necessarily reflect the official opinion of the European Union. Neither the European Union institutions and bodies nor any person acting on their behalf may be held responsible for the use that may be made of the information contained herein.

The calculation is currently aimed at single-zone buildings with ground floor. The evaluation of multi-zone buildings is under evaluation.

## Getting Started

The following command will install the latest pyBuildingEnergy library:

```bash
pip install pybuildingenergy
```

The tool allows you to evaluate the performance of buildings in different ways:

### 1. Running Archetype Simulations

```bash
python3 pybuildingenergy --archetype
```

Here it is possible to select two options:

**Option A: Selection of archetype by providing:**
- Information on building type: `single_family_house`
- Period of construction: `before 1900`, `1901-1920`, `1921-1945`, `1946-1960`, `1961-1975`, `1976-1990`, `1991-2005`, `2006-today`
- Location: **latitude** and **longitude**

**Option B: Demo Building having these features:**
- `single_family_house`
- `before 1900`
- City: Turin
- Latitude: 45.071321703968124
- Longitude: 7.642963669564985

### 2. Running BESTEST 600 Demo

```bash
python3 pybuildingenergy --best_test
```

### 3. Custom Building Analysis

For your own building, you can either upload the information from scratch or preload the information from a building archetype and then edit only the information you know.

See [Examples](https://github.com/EURAC-EEBgroup/pyBuildingEnergy/tree/master/examples) folder.

## Building Inputs

### Building Geometry Data - General

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Latitude** | `latitude` | Latitude of the building in decimal | [-] | YES |
| **Longitude** | `longitude` | Longitude of the building location in decimal | [-] | YES |
| **Coldest month** | `coldest_month` | Define the coldest month of the building location. Value from 1 (January) to 12 (December) | [-] | YES. Default: 1 |
| **Gross building area** | `a_use` | Gross floor area of the building | [m²] | YES |
| **Slab on ground area** | `slab_on_ground_area` | Ground floor gross area | [m²] | If not provided, calculated as useful area / number of floors |
| **Number of floors** | `number_of_floor` | Number of building floors | [-] | YES/NO if number of floors is provided |
| **Building perimeter** | `exposed_perimeter` | Perimeter of the building | [m] | YES/NO If not provided, calculated as rectangular with one side being 10 meters |
| **Building height** | `height` | External height of the building | [m] | YES |
| **Average thickness of wall** | `wall_thickness` | Average thickness of building walls | [m] | YES |
| **Surface of envelope** | `surface_envelope` | Gross volume of the building | [m³] | If not provided, calculated as slab on ground area × building height |
| **Volume** | `volume` | Gross volume of the building | [m³] | If not provided, calculated as slab on ground area × building height |

### System Configuration

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Annual mean internal temperature** | `annual_mean_internal_temperature` | Average between Heating and Cooling setpoints | [°C] | NO: if not provided, it is calculated |
| **Annual mean external temperature** | `annual_mean_external_temperature` | Annual mean external temperature of the building location | [°C] | NO: if not provided, it is calculated |
| **Heating system** | `heating_mode` | True if heating system is installed, False if not | [True or False] | YES |
| **Cooling system** | `cooling_mode` | True if cooling system is installed, False if not | [True or False] | YES |
| **Heating setpoint** | `heating_setpoint` | Temperature set-point of the heating system | [°C] | YES. If `heating_mode` is True |
| **Cooling setpoint** | `cooling_setpoint` | Temperature set-point of the cooling system | [°C] | YES. If `cooling_mode` is True |
| **Heating setback** | `heating_setback` | Temperature set-back of the heating system | [°C] | YES. If `heating_mode` is True |
| **Cooling setback** | `cooling_setback` | Temperature set-back of the cooling system | [°C] | YES. If `cooling_mode` is True |
| **Max power of heating generator** | `power_heating_max` | Max power of heating generator | [W] | YES. If `heating_mode` is True |
| **Max power of cooling generator** | `power_cooling_max` | Max power of cooling generator | [W] | YES. If `cooling_mode` is True |

### Ventilation and Internal Gains

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Air change rate** | `air_change_rate_base_value` | Value of air change rate | [m³/h·m²] | YES |
| **Air change rate extra** | `air_change_rate_extra` | Extra value of air change rate, in specific period according to occupancy profile | [m³/h·m²] | YES |
| **Internal Gains** | `internal_gains_base_value` | Power of internal gains | [W/m²] | YES |
| **Extra Internal Gains** | `internal_gains_extra_value` | Extra value of internal gains, in specific period according to occupancy profile | [W/m²] | YES |

### Building Envelope

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Thermal bridges** | `thermal_bridge_heat` | Overall heat transfer coefficient for thermal bridges (without ground floor) | [W/K] | YES |
| **Thermal resistance of floor** | `thermal_resistance_floor` | Average thermal resistance of internal floors | [m²K/W] | YES |
| **Facade elements type** | `typology_elements` | List of all facade elements. Use: "OP" (Opaque), "GF" (Ground Floor), "W" (Windows) | [-] | YES |
| **Orientation of facade elements** | `orientation_elements` | Orientation: NV (North), SV (South), EV (East), WV (West), HOR (Horizontal/Slope) | [-] | YES |
| **Solar absorption coefficients** | `solar_abs_elements` | Solar absorption coefficient of external facade elements | [-] | YES |
| **Area of facade elements** | `area_elements` | Area of each facade element | [m²] | YES |
| **Transmittance - U** | `transmittance_U_elements` | Transmittance of each facade element | [W/m²K] | YES |
| **Thermal resistance - R** | `thermal_resistance_R_elements` | Thermal Resistance of each facade element | [m²K/W] | YES |
| **Thermal capacity - k** | `thermal_capacity_elements` | Heat capacity of each layer | [J/m²K] | YES |
| **g-value** | `g_factor_windows` | Solar energy transmittance of windows | [-] | YES |

### Heat Transfer Coefficients

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Heat convective - internal** | `heat_convective_elements_internal` | Convective heat transfer coefficient internal surface | [W/m²K] | YES |
| **Heat convective - external** | `heat_convective_elements_external` | Convective heat transfer coefficient external surface | [W/m²K] | YES |
| **Heat radiative - internal** | `heat_radiative_elements_internal` | Radiative heat transfer coefficient internal surface | [W/m²K] | YES |
| **Heat radiative - external** | `heat_radiative_elements_external` | Radiative heat transfer coefficient external surface | [W/m²K] | YES |
| **View factor** | `sky_factor_elements` | View factor between building element and the sky | [-] | YES |

### Occupancy Profiles

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Occupancy profile workdays - internal gains** | `comf_level_wd_gains` | Occupancy profile for workdays to evaluate extra internal gains | [-] | YES |
| **Occupancy profile weekends - internal gains** | `comf_level_we_gains` | Occupancy profile for weekends to evaluate extra internal gains | [-] | YES |
| **Occupancy profile workdays - airflow** | `comf_level_wd_airflow` | Occupancy profile for workdays to evaluate extra air change rate | [-] | YES |
| **Occupancy profile weekends - airflow** | `comf_level_we_airflow` | Occupancy profile for weekends to evaluate extra air change rate | [-] | YES |

### Additional Parameters

| Parameter | Key | Description | Unit | Mandatory |
|-----------|-----|-------------|------|-----------|
| **Class of building construction** | `construction_class` | Distribution of mass for opaque elements. Options: `class_i`, `class_e`, `class_ie`, `class_d` | [-] | YES |
| **Weather source** | `weather_source` | Choose 'pvgis' for PVGIS API or 'epw' for EPW file | [-] | YES |

More information about coefficients are available [here](https://github.com/EURAC-EEBgroup/pyBuildingEnergy/tree/master/src/pybuildingenergy/data).

## Documentation

Check our documentation [here](https://pybuildingenergy.readthedocs.io/en/latest/).

## Examples

Here are some [Examples](https://github.com/EURAC-EEBgroup/pyBuildingEnergy/tree/master/examples) on pyBuildingEnergy application.

## Contributing and Support

### Bug Reports/Questions

If you encounter a bug, kindly create a GitLab issue detailing the bug. Please provide:
- Steps to reproduce the issue
- Code snippet that triggers the bug
- Traceback if error occurs
- Expected vs actual behavior

### Code Contributions

We welcome and deeply appreciate contributions! Every contribution, no matter how small, makes a difference. Click here to find out more about contributing to the project.

## License

- **License**: MIT License
- **Documentation**: https://pybuildingenergy.readthedocs.io

## Acknowledgment

This work was carried out within European projects:

- **Infinite**: This project has received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 958397
- **Moderate**: Horizon Europe research and innovation programme under grant agreement No 101069834

With the aim of contributing to the development of open products useful for defining plausible scenarios for the decarbonization of the built environment.

Regarding the DHW Calculation: The work was developed using the regulations and results obtained from the spreadsheet created by the EPBCenter.

## References

- EN ISO 52010-1:2018 Energy performance of buildings - External climatic conditions - Part 1: Conversion of climatic data for energy calculations
- EN ISO 52016-1:2018 Energy performance of buildings - Energy needs for heating and cooling, internal temperatures and sensible and latent heat loads
- EN ISO 12831-3:2018 Energy performance of buildings - Method for calculation of the design heat load - Part 3: Domestic hot water systems heat load and characterisation of needs, Module M8-2, M8-3

---

## Installation

```bash
pip install pybuildingenergy
```

## Quick Start

```bash
# Run archetype simulation
python3 pybuildingenergy --archetype

# Run BESTEST 600 demo
python3 pybuildingenergy --best_test
```

For more detailed examples and usage, visit the [GitHub repository](https://github.com/EURAC-EEBgroup/pyBuildingEnergy).