# IgDiscover Example

[IgDiscover](http://docs.igdiscover.se/) example usage with the
[test dataset](http://docs.igdiscover.se/en/stable/testing.html#test).
Everything is so nicely bundled up with conda and Snakemake that there really
isn't much of anything to see here.

    conda env update --file environment.yml
    conda activate example-igdiscover
    make
    make check
