#tsplay
从`tstools`中抽取出的`tsplay`工具，可以将`MPEG-TS`文件以`UDP/TCP`的方式发送成`TS`流

```
Basic usage: tsplay  <infile>  <host>[:<port>]

  TS tools version 1.11, tsplay built Jul 31 2015 20:40:38

  Play the given file (containing Transport Stream or Program Stream
  data) 'at' the nominated host, or to an output file. The output
  is always Transport Stream.

Input:
  <infile>          Input is from the named H.222 TS file.

Output:
  <host>
  <host>:<port>     Normally, output is to a named host.
                    If <port> is not specified, it defaults to 88.
                    Output defaults to UDP.
  -output <name>
  -o <name>         Output is to file <name>.

  -tcp              Output to the host is via TCP.
  -udp              Output to the host is via UDP (the default).
  -stdout           Output is to standard output. Forces -quiet.

  -mcastif <ipaddr>
  -i <ipaddr>       If output is via UDP, and <host> is a multicast
                    address, then <ipaddr> is the IP address of the
                    network interface to use. This may not be supported
                    on some versions of Windows.

General Switches:
  -quiet, -q        Only output error messages
  -verbose, -v      Output progress messages
  -help <subject>   Show help on a particular subject
  -help             Summarise the <subject>s that can be specified

  -max <n>, -m <n>  Maximum number of TS/PS packets to read.
                    See -details for more information.
  -loop             Play the input file repeatedly. Can be combined
                    with -max.
```