# Response

Some assorted scripts to assist incident response.

## Acquisition

Linux manual acquisition
```
# acquire forensic data from host
./acquisition/acquire.sh

# unpack forensics on lab workstation
tar -xzvf artefacts.tar.gz

# build timeline CSV from file timestamps
./acquisition/timeline.py files.txt
```

Plaso acquisition
```
yum install plaso

```

## Splunk

### External Lookup

```
cat lookup/test.csv | python lookup/lookup.py a b
index=* | head 10 | lookup lookup a as index | table index b
```

- https://docs.splunk.com/Documentation/Splunk/7.2.6/Knowledge/DefineanexternallookupinSplunkWeb
- https://docs.splunk.com/Documentation/Splunk/7.2.6/Knowledge/Configureexternallookups

## Tools

- https://www.sweetscape.com/010editor [HEX]
- https://github.com/fireeye/flare-floss [STRINGS]
- https://github.com/Neo23x0/munin [OSINT]
- https://github.com/TheRook/subbrute [OSINT]
- https://github.com/Neo23x0/vti-dorks [INFO]
- https://github.com/NationalSecurityAgency/ghidra [RE]
- https://binary.ninja [RE]
- https://github.com/Velocidex/c-aff4/releases [FORENSICS]
- https://github.com/log2timeline/plaso [FORENSICS]
- https://github.com/google/timesketch [FORENSICS]

## Services

- https://urlscan.io [URL DOMAIN IP FILENAME HASH ASN]
- https://urlquery.net [URL DOMAIN]
- https://www.virustotal.com [URL DOMAIN IP HASH]
- https://community.riskiq.com/home [DOMAIN IP SSL WHOIS]
- https://www.hybrid-analysis.com [IP DOMAIN HASH STRING]
- https://analyze.intezer.com [HASH]
- https://iris-h.services [HASH]
- https://app.any.run [HASH]
- https://www.shodan.io [STRING]
- https://developers.whatismybrowser.com [AGENT]
- https://dnsdumpster.com [DOMAIN]
- https://malware.one [HASH]
- https://majestic.com/reports/majestic-million [DOMAIN]
- https://malshare.com [HASH FILENAME]
- https://www.talosintelligence.com [DOMAIN IP WHOIS]

IP Info
```
https://urlscan.io/search/#216.58.199.78
https://www.virustotal.com/#/ip-address/216.58.199.78
https://community.riskiq.com/search/216.58.199.78
https://www.hybrid-analysis.com/search?query=216.58.199.78
https://www.shodan.io/host/216.58.199.78
https://www.talosintelligence.com/reputation_center/lookup?search=216.58.199.78
```

Domain info
```
https://urlscan.io/search/#google.com
https://urlquery.net/search?q=google.com
https://www.virustotal.com/#/domain/google.com
https://community.riskiq.com/search/google.com
https://www.hybrid-analysis.com/search?query=google.com
https://www.shodan.io/search?query=google.com
https://www.talosintelligence.com/reputation_center/lookup?search=google.com
https://majestic.com/reports/majestic-million?domain=google.com
```

Hash info
```
https://www.virustotal.com/#/file/ceadae884d11228c9597e19fa04bc213c65d062d68351bbac799ff41360ba40d
https://www.hybrid-analysis.com/sample/ceadae884d11228c9597e19fa04bc213c65d062d68351bbac799ff41360ba40d
https://analyze.intezer.com/#/files/ceadae884d11228c9597e19fa04bc213c65d062d68351bbac799ff41360ba40d
https://iris-h.services/#/pages/report/ceadae884d11228c9597e19fa04bc213c65d062d68351bbac799ff41360ba40d
https://malshare.com/search.php?query=ceadae884d11228c9597e19fa04bc213c65d062d68351bbac799ff41360ba40d
```

## Intelligence

- https://docs.google.com/spreadsheets/d/1H9_xaxQHpWaa4O_Son4Gx0YOIzlcBWMsdvePFX68EKU/pubhtml#

## Documentation

- Wireshark [[USER GUIDE](https://www.wireshark.org/docs/wsug_html_chunked/)] [[CHEAT SHEET](http://packetlife.net/media/library/13/Wireshark_Display_Filters.pdf)]
- Snort [[USER GUIDE](http://manual-snort-org.s3-website-us-east-1.amazonaws.com/)] [[CHEAT SHEET](https://drive.google.com/file/d/0B8NS7iXwJhA7RTE3QzNGRHVtNzg/view)]
- Splunk [[USER GUIDE](https://docs.splunk.com/Documentation)] [[CHEAT SHEET](https://www.splunk.com/pdfs/solution-guides/splunk-quick-reference-guide.pdf)]
