import SwiftSocket

func echoService(client: TCPClient) {
    print("Newclient from:\(client.address)[\(client.port)]")
    let d = client.read(1024*10)
    let r = client.send(data: d!)
    print("Send Result: \(r)")
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
            if let client = server.accept() {
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
