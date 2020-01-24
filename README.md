# IgDiscover Example

[IgDiscover](http://docs.igdiscover.se/) example usage with the
[test dataset](http://docs.igdiscover.se/en/stable/testing.html#test).
Everything is so nicely bundled up with conda and Snakemake that there really
isn't much of anything to see here.

    conda env update --file environment.yml
    conda activate example-igdiscover
    make
    make check

## TBD

From the
[explanation of final results](http://docs.igdiscover.se/en/stable/guide.html#final-results)
in the user guide:

> final/database/(V,D,J).fasta
> 
> These three files represent the final, individualized V/D/J database found by
> IgDiscover. The D and J files are copies of the original starting database;
> they are not updated by IgDiscover.

They're not?  Looks to me like we get a new entry in the J file.  D is
identical to the input file after accounting for duplicates.
