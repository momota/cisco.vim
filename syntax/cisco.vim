" Vim syntax file
" Language: cisco
" Maintainer: Makoto Momota <makoto.momota@gmail.com>

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_
setlocal iskeyword+=:


syn match   ciscoDef        /\s\u\S\+/

syn keyword ciscoCond       match eq neq gt lt ge le range

syn keyword ciscoKeyword    speed duplex negotiation delay bandwidth preempt priority timers
syn keyword ciscoKeyword    logging log login password username user license host hostname system
syn keyword ciscoKeyword    address network route neighbor redistribute default-gateway community
syn keyword ciscoKeyword    version class switchport clock name minimum maximum level size
syn keyword ciscoKeyword    established source destination allowed
syn keyword ciscoKeyword    timeout threshold frequency keepalive average weights mtu tunnel
syn keyword ciscoKeyword    privilege secret
syn match   ciscoKeyword    /timestamps\?/

syn keyword ciscoProtocol   ipv4 ipv6 tcp udp icmp echo
syn keyword ciscoProtocol   http https www dhcp domain nameserver ssh telnet ftp ftp-data
syn keyword ciscoProtocol   ntp snmp snmptrap syslog
syn keyword ciscoProtocol   smtp pop2 pop3
syn keyword ciscoProtocol   klogin kshell login rlogin sunrpc 
syn keyword ciscoProtocol   mpls rip isis ospf ospfv3 eigrp bgp hsrp vrrp ipsla
syn keyword ciscoProtocol   isdn dial hdlc frame-relay atm
syn keyword ciscoProtocol   igmp multicast broadcast
syn keyword ciscoProtocol   rsa pki isakmp ipsec ike esp gre vpn mvpn pppoe
syn keyword ciscoProtocol   qos cef pim ahp tacacs
syn keyword ciscoProtocol   cdp lldp vtp spanning-tree lacp dot1Q l2tun ethernet
syn keyword ciscoProtocol   aaa aaa-server
syn match   ciscoProtocol   /traps\?/

syn keyword ciscoConfigure  activate set default redundancy prefe ron tag
syn keyword ciscoConfigure  inside outside input output static export import

syn keyword ciscoFunction   service crypto encapsulation standby mode in out
syn keyword ciscoFunction   storm-control snmp-server group nat banner mask seq metric
syn keyword ciscoFunction   add-route shape rd route-target as-path remote-as
syn keyword ciscoFunction   access-list access-class access-group prefix-list
syn keyword ciscoFunction   passive-interface distribute-list permit subnet-zero
syn match   ciscoFunction   /channel\-\(group\|protocol\)/

syn match   ciscoComment    /!.*$/
syn match   ciscoComment    /no\s.*$/
syn match   ciscoComment    /description.*$/
syn match   ciscoComment    /remark.*$/
syn match   ciscoComment    /\s*#.*$/

syn match   ciscoString     /\"[^"]*\"/

syn match   ciscoInterface  /^\(interface\|vlan\|line\|router\|track\)\s.*\d$/
syn match   ciscoInterface  /^ip\s\(sla\|vrf\)\s.*\d$/
syn match   ciscoInterface  /^monitor\ssession\s\d\+$/
syn match   ciscoInterface  /^\(class\|policy\|route\)\-map\s.*$/
syn match   ciscoInterface  /^ip\saccess\-list\s\(standard\|extended\)\s.*$/
syn match   ciscoInterface  /^vrf\s\(definition\|context\)\s.*$/
syn match   ciscoInterface  /^address\-family\sipv.*$/


syn keyword ciscoAction     disable deny shutdown down none

syn keyword ciscoVar        trunk access full full-duplex auto active monitor
syn keyword ciscoVar        any enable disable
syn keyword ciscoVar        pvst mst rapid-pvst \transparent server client
syn match   ciscoVar        /\d\+[mg]\?/


" IPv4
syn match   ciscoIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/

" IPv6
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{7}\(\:\|\(\x\{1,4}\)\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{6}\(\:\|\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\|\(\:\x\{1,4}\)\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ciscoIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ciscoIpv6       /\s\:\(\:\x\{1,4}\)\{0,5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/

hi link ciscoKeyword        Statement
hi link ciscoProtocol       Type
hi link ciscoAction         Error
hi link ciscoFunction       Function
hi link ciscoLabel          Identifier
hi link ciscoCond           Type
hi link ciscoComment        Comment
hi link ciscoString         String
hi link ciscoVar            String
hi link ciscoConfigure      Identifier
hi link ciscoDef            String
hi link ciscoInterface      Underlined
hi link ciscoIpv4           Underlined
hi link ciscoIpv6           Underlined

let b:current_syntax = "cisco"
