import SwiftSocket

func echoService(client: TCPClient) {
    print("Newclient from:\(client.address)[\(client.port)]")
    var d = client.read(1024*10)
    client.send(data: d!)
    client.close()
    print("Closed Client:\(client.address)[\(client.port)]")
}

func testServer() {
    let host = "127.0.0.1"
    let port = Int32(8080)
    print("Server listening on \(host):\(port)")
    let server = TCPServer(address: host, port: port)
    switch server.listen() {
      case .success:
        while true {
            if var client = server.accept() {
                echoService(client: client)
            } else {
                print("accept error")
            }
        }
      case .failure(let error):
        print(error)
    }
}

testServer()
