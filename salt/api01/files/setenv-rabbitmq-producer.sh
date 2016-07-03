#add tomcat pid
CATALINA_PID="$CATALINA_BASE/tomcat.pid"
#add java opts
JAVA_OPTS="-server -Xms8192M -Xmx8192M"
CATALINA_OPTS="-Djava.library.path=/usr/local/tomcat-native/lib"
