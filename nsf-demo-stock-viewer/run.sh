java -javaagent:/opt/nsf/nsf-agent-fat.jar=nsf -Dnsf.grpc.timeout=15000 -Dstock_provider_url=http://nsf-provider -Dstock_advisor_url=http://nsf-advisor -jar /opt/nsf/nsf-demo-stock-viewer-1.0-SNAPSHOT.jar