 ------
 Development Process
 ------
 Brett Porter
 Trygve Laugstol
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

Development Process

 * Deploying snapshots lowers the bar to entrance for potential users.

 * Plugins on the website should gather people willing to work on them. We hope at least 2 people will know how an
 individual plugin works.

* {Versioning and Release Strategy}

 We follow the versioning from Maven itself:

 [x.y.z-alpha-n] Alpha version, not feature complete.

 [x.y.z-beta-n] Beta version, complete for the next release, not fully tested/documented.

 [x.y.z] "Proper" release.

 []

 Where:

 * x is the major version: updated when it is not backwards compatible with the previous version.

 * y is the minor version: updated when features are added.

 * z is the micro version: service release, only bugfixes.

 []

 Plugins can have snapshot versions deployed for testing, or beta/alpha releases deployed for wider testing and a bit more stability.

 Once a plugin is ready for another release, follow the checklist for
 {{{./performing-a-release.html}performing a release}}.

* {Debugging Tips}

 To debug Maven 2/3 with IDEA use this command:

+-----+
MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005"
mvn install
+-----+
