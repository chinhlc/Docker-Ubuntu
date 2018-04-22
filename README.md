# Docker-basic-php


Build Image:
docker pull chinhlc/demobasic


Build Container
docker run -p [host-port]:80 -d -v /`pwd`/:/var/www/html --name container_basic chinhlc/demobasic php -S 0.0.0.0:80

với:
							php -S 0.0.0.0:80 				Là lệnh buil 1 server với port 80 thông qua lệnh compline php
							-p 8080:80						    đổi port 80 được khai báo trong Dockerfile sang [host-port] mong muốn là 8080
							--name container_common 			là đặt tên cho container
																		            nếu không đặt tên, Docker sẽ tự sinh ra một tên bất kỳ. vd:
																					        docker run -p 8080:9000 -d -v $(pwd):/var/www/html chinhlc/demobasic php -S 0.0.0.0:9000
							-v 'path1:'path2'					Map path của code vào path của docker image. vd truy cập vào thư mục hiện tại:
                                              linux:
                                                    -v $(pwd):/var/www/html
                                              windows:
                                                    -v /`pwd`/:/var/www/html
                                              Hoặc đặt đường dẫn tĩnh
                                                    -v /d:/ServerDocker/demo:/var/www/html
