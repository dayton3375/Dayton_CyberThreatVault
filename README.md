# Pullman Cyber Threat Vault
This is a collection of the most aggressive malware, code, and malicious requests that I discover hit my IP at my Eastern Washington state address.

I do this by having Security Onion sniff all the traffic on a public IP address of mine 
and I analyze anything interesting that adversaries are spraying accross IP blocks


# ----- Threat Intelligence Summary -----

## TOP THREATS:

### Sipvicious Scanning Activity: 
The most common aggresive activity detected is sipvicious scans at over 100 hits a day (very consistent). These mostly originate from Poland and the UK addresses. They appear to be sniffing for VOIP services running.

### Microsoft SQL Attacks: 
Between 50 and 100 hits per day are attacks on MSSQL. These appear to be mostly connection requests sniffing for the running service but could have malicious content targeting a specific vulnerability. The vast majority of these are from China addresses.

### SNMP Attacks
Port 161 sees about a dozen hits a day that triggers in "information leak" alert. They usually contain a malicious get-request. These mostly originate from Amsterdam addresses but also are from other various places in the world.

### Log4Shell
This is a new emerging threat that has been interesting to see the way that attackers are using it. There are many differnent methods threat actors try to get the malicious string logged, and here we see the majority are using HTTP Authentication Headers with various parameters. The malware payload Exploit came from an attack where the threat actor was using curl, such that it appears to be a copy of the Log4Shell Solar Lab on TryHackMe. These were captured the morning of December 10, the day after Log4Shell went public.

### Mozi Bot
This botnet surged toward the fall of 2021 and then seemed to die off after many of the malicious requests appeared to have the wrong C2 IP address (it was 192.168.1.1 which just a non-routable private address). I believe that caused the infection to die off significantly. I obtained the payload and stored that in this repo. So far all of the C2 servers and any IP addresses involved originate from China. Researching and reverse engineering this payload, it appears to have a lot of concerning functionality such as breaching into the WiFi network of the router and sending information to the Chinese address even after obtaining persisance.


# ---- Top Malicious Countries ----
The majority of malicious traffic comes from Russia and China, however there are some shocking differences betweeen the two.

## Russia
Russia sends a lot of scanning activity and has not been observed throwing much exploits. There are approximately 5,000 scan sessions each day hosted from dozens of IP addresses located in Russia. These scans are mostly targetting high number ports and almost never service ports. This behavior might be an adversarial interest in mapping out which ports routers are using for NAT.

## China
Strangely China IPs are completely the opposite of Russian IPs for me. There has been very little scanning activity from China, but more purely aggressive activity of throwing exploits and aggressive scans that do exploit a service to obtain further information. These are mostly MySQL, MSSQL, and malicious botnet activity. 

## Netherlands
An IP block in Amsterdam has been observed as the majority of scanning activity, however these scans are non-aggressive connection requests to various ports. The WHOIS query on this IP block reveals that it's not malicious and belongs to a research institution that supplies network intelligence to orgaizations such as Showdan.
