#add tomcat pid
CATALINA_PID="$CATALINA_BASE/tomcat.pid"
#add java opts
JAVA_OPTS="-server -Xms4096M -Xmx4096M"
CATALINA_OPTS="-Djava.library.path=/usr/local/tomcat-native/lib"
