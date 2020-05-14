# Installation

The installation instruction from a PySTEPS developer  
https://pysteps.readthedocs.io/en/latest/user_guide/install_pysteps.html

Hence, it is so important to use only the `conda-forge` channel.

In the next, it is a fragment from the instruction.

The next step is to add the conda-forge channel where the pySTEPS package is located:

`$ conda config --env --prepend channels conda-forge`

Let’s set this channel as the priority one:

`$ conda config --env --set channel_priority strict`

The latter step is not strictly necessary but is recommended since the conda-forge and
the default Anaconda channels are not 100% compatible.

To force use only the `conda-forge` channel with creating `environment.yml` file you could add this:

```yaml
channels:
  - conda-forge
  - nodefaults
``` 