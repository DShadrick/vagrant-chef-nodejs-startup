bash "install_graphics_magick" do |variable|
	user "root"
	cwd "/tmp"
	code <<-EOH
	wget ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/1.3/GraphicsMagick-1.3.17.tar.gz
	tar -xvf GraphicsMagick-1.3.17.tar.gz
	cd GraphicsMagick-1.3.17
	./configure
	make
	sudo make install
	EOH
end
