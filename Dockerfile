# escape=`
FROM nanori/windows-java:8u91-jre-windowsservercore
SHELL ["powershell"]

ENV JENKINS_HOME "c:\\jenkins\\"
COPY start_slave.ps1 "$JENKINS_HOME"

WORKDIR $JENKINS_HOME
ENTRYPOINT ["powershell.exe"]
CMD ["-f", "c:\\jenkins\\start_slave.ps1"]
