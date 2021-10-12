# Parameterizing tabular-iceberg decay in an ocean model.

This repository contains the source code, gridded results, and post-processing/figure generation scripts for:

Huth, A, Adcroft, A, and Sergienko, O (2021). Parameterizing tabular-iceberg decay in an ocean model.

Developer: Alex Huth (ahuth@princeton.edu)

# Contents

-The "instructions" file explains how to download the model (MOM6+SIS2, the new iceberg module, and the OM4 xmls), compile, and run the experiments. As a fail-safe, extra copies of the new iceberg module and OM4 experiments are provided in directories `iceberg_module_copy` and `om4_icebergs_copy`, respectively. However, building from scratch is recommended.

-Directory `FL_xmls` contains xmls to run the footloose experiments and their initial post-processing. These files should be copied to om4_icebergs if obtaining the OM4 xmls and building the source code from scratch (see instructions).

-Directory `results` contains the gridded results

-Directory `figures` contains jupyter notebooks for further post-processing and generating the figures in the paper.