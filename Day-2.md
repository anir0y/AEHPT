# DNS 

> domain name system, it is design for mapping IP address to a domain name.

## ZONE 

DNS store data in Zones, there is 2 type of ZONE TYPE. 

1. Forward Lookup Zone
2. Reverse Lookup Zone

1. Forward Lookup Zone. 

maps Domain to IP & hosts all records. 

**record Types**

|Type|details|
|---|---|
|A|	IPv4 records|
|AAAA| IPv6 Records|
|CNAME| conical Names, it maps 'domain name' to domain-name|
|MX | Mail Exchange Records|
|TXT| Text records|
|NS|Name Server |
|SOA| Start of Authority|
|SRV| Location of Service|
|Alias| Auto resolve Alias records|

2. reverse Lookup Zone. 

this is where we map IP/Network to the Domain Name.

|Type|details|
|---|---|
|PTR| Pointer Records, this one maps IP to domain Name|

---

# ROOT DNS

we have 13 org which manages the `root dns` 
ref: https://root-servers.org/

### TLD (top level Domain)

* com ; Verising

### how to reach: 

1. `google.com`
2. `mail.google.com`

TLD -> com [verisign]
Domain -> google [maintained by GOOGLE Admin]
sub-domain -> mail [manged by GOOGLE Admin]

Domain NS:

Verisign: will ask where to look for your info? 
Google: here you can find the info (NS: 2 IPs)
NS: DNS RECORDS(managed by Google)

