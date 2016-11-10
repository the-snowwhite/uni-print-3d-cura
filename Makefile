CURA_PATH = /usr

install:
#	cp uni_print_3d.def.json $(CURA_PATH)/share/cura/resources/definitions/
#	cp frankenprusa.def.json $(CURA_PATH)/share/cura/resources/definitions/
#	cp uni_print_3d_platform.stl $(CURA_PATH)/share/cura/resources/meshes/
#	cp frankenprusa.stl $(CURA_PATH)/share/cura/resources/meshes/
	rm -Rf $(CURA_PATH)/lib/cura/plugins/NGCWriter
	mkdir -p $(CURA_PATH)/lib/cura/plugins/NGCWriter/converter
	mkdir -p $(CURA_PATH)/lib/cura/plugins/NGCWriter/test
	cp -R NGCWriter $(CURA_PATH)/lib/cura/plugins/

mime:
	cp machinekit.xml /usr/share/mime/packages/
	update-mime-database /usr/share/mime
