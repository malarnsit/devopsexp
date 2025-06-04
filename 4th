May 03, 2025
required: Java 17, Gradle 4.4.1, Maven 3.8.7

step 1:- mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=HelloMaven \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

step 2:- cd HelloMaven
 
step 3:- Update pom.xml

<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
         http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId>
    <artifactId>HelloMaven</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>

    <dependencies>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.13.2</version>
            <scope>test</scope>
        </dependency>
    </dependencies>
</project>

step 4:- mvn package

step 5 :- java -cp target/HelloMaven-1.0-SNAPSHOT.jar com.example.App

after part a come out of the directory using command cd ..



step 6:-
mkdir HelloMavenGradle
cd HelloMavenGradle
gradle init --type java-application

step 7:- mkdir -p src/main/java/com/example
mkdir -p src/test/java/com/example

step 8 :- update app.java file

package com.example;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}


step 9:- update testapp.java

package com.example;

import org.junit.Test;

import static org.junit.Assert.*;

public class AppTest {
    @Test
    public void testMain() {
        assertTrue(true);
    }
}

step 10:- replace the bulid.gradle

apply plugin: 'java'
apply plugin: 'application'

group = 'com.example'
version = '1.0'

mainClassName = 'com.example.App'

sourceCompatibility = 17
targetCompatibility = 17

repositories {
    mavenCentral()
}

dependencies {
    testCompile 'junit:junit:4.13.2'
}


step 11:- gradle build

step 12:- gradle run
