sudo emerge --sync
glsa-check -t all
sudo emerge -avDuN @world
sudo emerge -a --depclean
sudo eclean-dist -dp
sudo eclean-dist -d

