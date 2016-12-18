# escape=`
FROM nanori/windows-java:8u111-jre-windowsservercore
SHELL ["powershell.exe"]

ENV JENKINS_HOME c:\jenkins\
RUN mkdir $env:JENKINS_HOME
COPY start_slave.ps1 "$env:JENKINS_HOME"

WORKDIR c:\\jenkins\\
ENTRYPOINT ["powershell.exe"]
CMD ["-f", "c:\\jenkins\\start_slave.ps1"]
