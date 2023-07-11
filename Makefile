target_dir := build

all: svg png

svg: default.svg
	mkdir -p $(target_dir)
	inkscape --export-plain-svg=$(target_dir)/default.svg default.svg

png: default.svg
	mkdir -p $(target_dir)
	inkscape default.svg -o $(target_dir)/default.png

clean:
	rm -r $(target_dir)
