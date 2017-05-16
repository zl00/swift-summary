//: [Previous](@previous)


//: CocoaAsyncSocket
//: 1. tag
//: 2. read
//:  readDataToLength  &  readDataToData
/// [wiki] https://github.com/robbiehanson/CocoaAsyncSocket/wiki/Intro_GCDAsyncSocket

/*:
 ```HTTP/1.1 200 OK
 Date: Thu, 24 Nov 2011 02:18:50 GMT
 Server: Apache/2.2.3 (CentOS)
 X-Powered-By: PHP/5.1.6
 Content-Length: 5233
 Content-Type: text/html; charset=UTF-8
*/

/*
- (void)socket:(GCDAsyncSocket *)sender didReadData:(NSData *)data withTag:(long)tag
{
    if (tag == HTTP_HEADER)
    {
        int bodyLength = [self parseHttpHeader:data];
        [socket readDataToLength:bodyLength withTimeout:-1 tag:HTTP_BODY];
    }
    else if (tag == HTTP_BODY)
    {
        // Process response
        [self processHttpBody:data];
        
        // Read header of next response
        NSData *term = [@"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
        [socket readDataToData:term withTimeout:-1 tag:HTTP_HEADER];
    }
}
*/
//: [Next](@next)
