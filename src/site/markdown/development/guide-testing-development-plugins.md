 ------
 Guide to Testing Development Versions of Plugins
 ------
 ------
 ------

~~ 
~~ Licensed to the Apache Software Foundation (ASF) under one
~~ or more contributor license agreements.  See the NOTICE file
~~ distributed with this work for additional information
~~ regarding copyright ownership.  The ASF licenses this file
~~ to you under the Apache License, Version 2.0 (the
~~ "License"); you may not use this file except in compliance
~~ with the License.  You may obtain a copy of the License at
~~
~~  http://www.apache.org/licenses/LICENSE-2.0
~~
~~ Unless required by applicable law or agreed to in writing,
~~ software distributed under the License is distributed on an
~~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
~~ KIND, either express or implied.  See the License for the
~~ specific language governing permissions and limitations
~~ under the License.
~~

Guide to Testing Development Versions of Plugins

* Why would I want to do this?

  If a bug you are encountering has been reported as fixed but not yet released, you can confirm that it has been fixed for you.
  Or perhaps you just like to live on the bleeding edge.

  You are highly encouraged to join the development list for the project and provide your feedback, or help promote release of the plugin in question.

  <<Note:>> This is <<not>> recommended as an everyday or in production practice!
  Snapshots are for testing purposes only and are not official releases.

* How do I do this?

  Development versions of MojoHaus plugins are periodically published to the OSS Sonatype snapshot repository: 
  {{{https://oss.sonatype.org/content/repositories/snapshots/}https://oss.sonatype.org/content/repositories/snapshots/}}
  
  The first step is to include this in your project:

+---------------------------------------+
<project xmlns="http://maven.apache.org/POM/4.0.0">
  ...
  <pluginRepositories>
    <pluginRepository>
      <id>ossrh-snapshots</id>
      <url>https://oss.sonatype.org/content/repositories/snapshots/</url>
      <snapshots>
        <enabled>true</enabled>
      </snapshots>
      <releases>
        <enabled>false</enabled>
      </releases>
    </pluginRepository>
  </pluginRepositories>
  ...
</project>
+---------------------------------------+

  After this is included, there are three ways to use the updated versions:

  * Set the appropriate version in the plugin, e.g. <<<2.0.1-SNAPSHOT>>>

  * If you have not specified a version, use the <<<-U>>> switch to update plugins for the given Maven run

  * You can have Maven automatically check for updates on a given interval, for example:

+---------------------------------------+
<project xmlns="http://maven.apache.org/POM/4.0.0">
  ...
  <pluginRepositories>
    <pluginRepository>
      <id>ossrh-snapshots</id>
      <url>https://oss.sonatype.org/content/repositories/snapshots/</url>
      <snapshots>
        <enabled>true</enabled>
        <updatePolicy>interval:15</updatePolicy>
      </snapshots>
      <releases>
        <enabled>false</enabled>
      </releases>
    </pluginRepository>
  </pluginRepositories>
  ...
</project>
+---------------------------------------+

  <<Note:>> These last two techniques mean that <<every>> plugin will be updated to the latest snapshot version.

  The development version will stop being used if the <<<\<pluginRepository\>>>> element is removed from your POM and the version is set back to the release version.
  If you are using the command line or an unspecified version, you will also need to remove the version from the local repository.

* Using Settings without Modifying the Project

  If you are using the goals from the command line on a number of projects, you should include this in your <<<settings.xml>>> file instead.

  You need to modify your <<<$\{user.home\}/.m2/settings.xml>>> file to include a new profile and then when you need access to the plugin snapshots use <<<-Possrh-snapshots>>>.
  The profile only needs to be enabled once so that the plugins can be downloaded into your local repository.
  Once in your local repository Maven can successfully resolve the dependencies and the profile no longer needs to be activated.

+---------------------------------------+
<settings>
  ...
  <profiles>
    <profile>
      <id>ossrh-snapshots</id>
      <pluginRepositories>
        <pluginRepository>
          <id>ossrh-snapshots</id>
          <name>MojoHaus Plugin Snapshots</name>
          <url>https://oss.sonatype.org/content/repositories/snapshots/</url>
          <releases>
            <enabled>false</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </pluginRepository>
      </pluginRepositories>
    </profile>
  </profiles>
  ...
</settings>
+---------------------------------------+

  When invoking Maven with the snapshot profile, do it like this:

+---------------------------------------+
mvn -Possrh-snapshots <phase|goal>
+---------------------------------------+

* Using a Repository Manager

  In addition to the above you may want to use a repository manager so that you can retain the builds you have been using.
  This is especially useful in a team environment where multiple developers need access to the same snapshot versions.
  
  Popular repository managers include:
  
  * {{{https://www.sonatype.com/products/sonatype-nexus-repository}Sonatype Nexus Repository}}
  
  * {{{https://jfrog.com/artifactory/}JFrog Artifactory}}
  
  []
  
  These tools allow you to proxy the OSS Sonatype snapshot repository and cache the artifacts locally for your team.

* How do I make changes to the source and test development versions of the plugins?

  If you want to modify the plugin source code and test your changes:

  [[1]] Clone the plugin repository from GitHub:

+---------------------------------------+
git clone https://github.com/mojohaus/<plugin-name>
+---------------------------------------+

  [[2]] Make your changes to the source code

  [[3]] Build and install the plugin locally:

+---------------------------------------+
mvn clean install
+---------------------------------------+

  [[4]] The plugin will now be available in your local Maven repository (<<<~/.m2/repository>>>) with the current SNAPSHOT version.

  [[5]] You can use this locally built version in your projects by specifying the SNAPSHOT version in your POM.

  []

  For more information on contributing code changes, see {{{../contribution/submitting-a-patch.html}Submitting a Patch}}.

* Reporting Issues

  If you find issues while testing development versions, please report them on the plugin's GitHub issue tracker.
  Each plugin has its own repository under the MojoHaus organization: {{{https://github.com/mojohaus}https://github.com/mojohaus}}

  For guidance on reporting issues, see {{{../contribution/reporting-an-issue.html}Reporting an Issue}}.
