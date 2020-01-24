DATAURL = https://bitbucket.org/igdiscover/testdata/downloads/igdiscover-testdata-0.5.tar.gz
all: discovertest/stats/stats.json 
igdiscover-testdata/reads.1.fastq.gz:
	wget $(DATAURL)
	tar xvf $(notdir $(DATAURL))

discovertest/igdiscover.yaml: igdiscover-testdata/reads.1.fastq.gz
	igdiscover init --db $(dir $^)/database/ --reads $^ $(dir $@)

discovertest/stats/stats.json: discovertest/igdiscover.yaml
	cd $(dir $^) && igdiscover run

clean:
	rm -f $(notdir $(DATAURL))
	rm -rf igdiscover-testdata
	rm -rf discovertest

check:
	md5sum -c MANIFEST
