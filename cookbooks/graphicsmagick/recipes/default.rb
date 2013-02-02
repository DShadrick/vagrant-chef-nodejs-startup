bash "install_graphics_magick" do |variable|
	user "root"
	cwd "/tmp"
	code <<-EOH
	wget ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/GraphicsMagick-LATEST.tar.gz
	tar -xvf GraphicsMagick-LATEST.tar.gz
	cd GraphicsMagick-LATEST
	./configure
	make
	sudo make install
	EOH
end