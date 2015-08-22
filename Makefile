.PHONY: all


all: intro-to-os-box

clean:
	rm -rf download/ud923-ubuntu-14-04.ova
	rm -rf packer/packer_intro-to-os_vagrant.box

download/ud923-ubuntu-14-04.ova:
	mkdir -p $(dir $@)
	curl 'https://s3.amazonaws.com/content.udacity-data.com/courses/ud923/resources/ud923-ubuntu-14-04.ova' -o $@

packer/packer_intro-to-os_vagrant.box: packer/packer-config.json download/ud923-ubuntu-14-04.ova
	cd $(dir $<) && packer build $(notdir $<)

intro-to-os-box: packer/packer_intro-to-os_vagrant.box
	vagrant box add --name intro-to-os $<
