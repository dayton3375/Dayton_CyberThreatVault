This flags in VirusTotal as malware typically named Tsunami. The odd attribute I found is that even though the script is named russia.sh, there's a lot of Chinese characters in the malware it downloads. 

1. Exploit injects commands into the gateway device

2. russia.sh uses wget or curl to call out to the C2 and download each malware variant for each CPU architecture (x86, mips, arm, etc.)

3. Only one of the malware variants is expected to actually execute, which is the one that is compiled for that CPU architecture, and the rest will fail to run.

4. The malware appears to have bot behavior and contains strings referring in English to functionalities such as SYN flooding and killing drivers.