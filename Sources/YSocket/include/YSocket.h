void ytcpsocket_set_block(int socket, int on); 
int ytcpsocket_connect(const char *host, int port, int timeout);
int ytcpsocket_close(int socketfd);
int ytcpsocket_pull(int socketfd, char *data, int len, int timeout_sec);
int ytcpsocket_send(int socketfd, const char *data, int len);
int ytcpsocket_listen(const char *address, int port);
int ytcpsocket_accept(int onsocketfd, char *remoteip, int *remoteport, int timeouts);
int ytcpsocket_port(int socketfd);

int yudpsocket_server(const char *address, int port);
int yudpsocket_recive(int socket_fd, char *outdata, int expted_len, char *remoteip, int *remoteport);
int yudpsocket_close(int socket_fd);
int yudpsocket_client();
//enable broadcast
void enable_broadcast(int socket_fd);
int yudpsocket_get_server_ip(char *host, char *ip);
//send message to address and port
int yudpsocket_sentto(int socket_fd, char *msg, int len, char *toaddr, int topotr);