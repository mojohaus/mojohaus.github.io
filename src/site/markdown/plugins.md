# Plugins

In order to guard against corrupted downloads/installations, it is highly recommended to
[verify the signature](https://www.apache.org/dev/release-signing#verifying-signature) of the release bundles against the public
[KEYS](https://www.mojohaus.org/KEYS) used by the **MojoHaus** developers.

* [Production Plugins](#Production_Plugins)
* [Pre-release Plugins](#Pre-release_Plugins)
* [Plugin Graveyard](#Plugin_Graveyard)

## Production Plugins

The following plugins have been released and are generally available for production use. However after the move from **Codehaus** to **MojoHaus** a lot of plugins have not been migrated ([yet](https://github.com/mojohaus/convert-to-git)), so when the issue tracking is missing, the plugin has not been migrated: if you want to migrate a plugin to contribute, please ask on the [mailing list](/mailing-lists.html).

|  | Plugin |  | Version |  | Description |  | Issue tracking |  |
| **Application Server** |  | *Plugins that support integration with application servers.* |
| [***jboss-packaging***](./jboss-packaging-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jboss-packaging-maven-plugin) | Packages various JBoss deployable archive files including AOP, ESB, HAR, SAR, and Spring. | [GitHub](https://github.com/mojohaus/jboss-packaging-maven-plugin/issues) |
| [***was6***](./was6-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/was6-maven-plugin) | IBM WebSphere Application Server 6.x, 7 & 8.x support. | - |
| [***weblogic***](./weblogic-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/weblogic-maven-plugin) | Supports various tasks within the Weblogic 8.1, 9.x, 10.x, 12.x environment. | - |
| **Generators / Compilers / Translators** |  | *Plugins providing support for code generation, compilation and translation.* |
| [***antlr***](./antlr-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/antlr-maven-plugin) | Process ANTLRv2 grammars. | - |
| [***aspectj***](./aspectj-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/aspectj-maven-plugin) | Weaves aspects with AspectJ. | [GitHub](https://github.com/mojohaus/aspectj-maven-plugin/issues) |
| [***axistools***](./axistools-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/axistools-maven-plugin) | Axis wsdl2java and java2wsdl support. | [GitHub](https://github.com/mojohaus/axistools-maven-plugin/issues) |
| [***castor***](./castor-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/castor-maven-plugin) | Source generation with Castor XML. | [GitHub](https://github.com/mojohaus/castor-maven-plugin/issues) |
| [***commons-attributes***](./commons-attributes-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/commons-attributes-maven-plugin) | Source generation for Commons Attributes. | - |
| [***GWT***](./gwt-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/gwt-maven-plugin) | GWT. | [GitHub](https://github.com/mojohaus/gwt-maven-plugin/issues) |
| [***hibernate3***](./hibernate3-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/hibernate3-maven-plugin) | Integration with Hibernate 3.x | - |
| [***idlj***](./idlj-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/idlj-maven-plugin) | Process IDL files into Java sources. | - |
| [***javacc***](./javacc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/javacc-maven-plugin) | Process JavaCC grammars. | [GitHub](https://github.com/mojohaus/javacc-maven-plugin/issues) |
| [***jaxb2***](./jaxb2-maven-plugin) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jaxb2-maven-plugin) | Generates Java classes from XML Schemas (and binding files) and creates XML Schemas from annotated Java classes, using JAXB2. | [GitHub](https://github.com/mojohaus/jaxb2-maven-plugin/issues) |
| [***jaxws***](./jaxws-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jaxws-maven-plugin) | JAX-WS wsgen/wsimport tooling support. | [GitHub](https://github.com/mojohaus/jaxws-maven-plugin/issues) |
| [***jpox***](./jpox-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jpox-maven-plugin) | Support for JPOX JDO. | - |
| [***jslint***](./jslint-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jslint-maven-plugin) | Provides fast and efficient JSLint code validation when developing JavaScript applications. | - |
| [***js import***](./js-import-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/js-import-maven-plugin) | Provides Maven dependency management for JavaScript applications. | - |
| [***jspc***](./jspc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jspc-maven-plugin) | Provides support for JSP compilation. | - |
| [***native2ascii***](./native2ascii-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/native2ascii-maven-plugin) | Converts files with characters in any supported character encoding to one with ASCII and/or Unicode escapes. | [GitHub](https://github.com/mojohaus/native2ascii-maven-plugin/issues) |
| [***rmic***](./rmic-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/rmic-maven-plugin) | Generates rmi (Remote Method Invocation) stub and skeleton classes. | - |
| [***sablecc***](./sablecc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/sablecc-maven-plugin) | Process SableCC grammars. | - |
| [***sqlj***](./sqlj-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/sqlj-maven-plugin) | Translates SQLJ source code to Java source code. | [GitHub](https://github.com/mojohaus/sqlj-maven-plugin/issues) |
| [***xdoclet***](./xdoclet-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/xdoclet-maven-plugin) | Provides XDoclet functionality to Maven. | - |
| **Reporting** |  | *Plugins which generate reports.* |
| [***clirr***](./clirr-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/clirr-maven-plugin) | Checks Java libraries for binary and source compatibility with older releases. | [GitHub](https://github.com/mojohaus/clirr-maven-plugin/issues) |
| [***cobertura***](./cobertura-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/cobertura-maven-plugin) | Code coverage via Cobertura. | [GitHub](https://github.com/mojohaus/cobertura-maven-plugin/issues) |
| [***l10n***](./l10n-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/l10n-maven-plugin) | The Localization Tools Maven Plugin helps with internationalization and localization of your projects. | [GitHub](https://github.com/mojohaus/l10n-maven-plugin/issues) |
| [***scmchangelog***](./scmchangelog-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/scmchangelog-maven-plugin) | Simple Reporter that creates a changelog report using comments and tags from Subversion. | - |
| [***taglist***](./taglist-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/taglist-maven-plugin) | Generates a report on various tags found in the code. | [GitHub](https://github.com/mojohaus/taglist-maven-plugin/issues) |
| [***javancss***](./javancss-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/javancss-maven-plugin) | Source measurement suite for Java. | [GitHub](https://github.com/mojohaus/javancss-maven-plugin/issues) |
| [***jdepend***](./jdepend-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jdepend-maven-plugin) | Generates JDepend reports. | [GitHub](https://github.com/mojohaus/jdepend-maven-plugin/issues) |
| **Testing** |  | *Plugins which support testing.* |
| [***codenarc***](./codenarc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/codenarc-maven-plugin) | Generate CodeNarc report against Groovy source code. | - |
| [***findbugs***](./findbugs-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/findbugs-maven-plugin) | Generates a FindBugs report. | [GitHub](https://github.com/mojohaus/findbugs-maven-plugin/issues) |
| [***fitnesse***](./fitnesse-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/fitnesse-maven-plugin) | Fully integrated standalone wiki, and acceptance testing framework. | - |
| [***selenium***](./selenium-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/selenium-maven-plugin) | Supports automated web-application testing. | - |
| [***webtest***](./webtest-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/webtest-maven-plugin) | Supports automated web-application testing using Canoo WebTest | - |
| [***chronos-jmeter***](./chronos/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/chronos-jmeter-maven-plugin) | Execute performancetests with jmeter and analyze the results. | - |
| [***chronos-surefire***](./chronos/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/chronos-surefire-maven-plugin) | Analyze time spent in unittests used to measure performance | - |
| [***chronos-report***](./chronos/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/chronos-report-maven-plugin) | Create reports of performance testresults. | - |
| **Tools** |  | *Miscellaneous tools available through Maven.* |
| [***animal-sniffer***](./animal-sniffer/animal-sniffer-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/animal-sniffer-maven-plugin) | Verifies classes against API signatures. | [GitHub](https://github.com/mojohaus/animal-sniffer/issues) |
| [***appassembler***](./appassembler/appassembler-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/appassembler-maven-plugin) | Generates bin and Java Service Wrapper scripts for Java applications. | [GitHub](https://github.com/mojohaus/appassembler/issues) |
| [***build-helper***](./build-helper-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/build-helper-maven-plugin) | Miscellaneous goals to support build process. | [GitHub](https://github.com/mojohaus/build-helper-maven-plugin/issues) |
| [***buildnumber***](./buildnumber-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/buildnumber-maven-plugin) | Creates unique build number for each build. | [GitHub](https://github.com/mojohaus/buildnumber-maven-plugin/issues) |
| [***buildplan***](./buildplan-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/buildplan-maven-plugin) | Inspects the lifecycle of your project. | [GitHub](https://github.com/mojohaus/buildplan-maven-plugin/issues) |
| [***cassandra***](./cassandra-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/cassandra-maven-plugin) | Mojo's plugin for Apache Maven to allow controlling Apache Cassandra. | [GitHub](https://github.com/mojohaus/cassandra-maven-plugin/issues) |
| [***ditaot***](./ditaot-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/ditaot-maven-plugin) | Support for DITA transformations using DITA Open Toolkit. | [GitHub](https://github.com/mojohaus/ditaot-maven-plugin/issues) |
| [***exec***](./exec-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/exec-maven-plugin) | Execution of system and Java programs. | [GitHub](https://github.com/mojohaus/exec-maven-plugin/issues) |
| [***flatten***](./flatten-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/flatten-maven-plugin) | Flattens your pom.xml before install or deploy. | [GitHub](https://github.com/mojohaus/flatten-maven-plugin/issues) |
| [***keytool***](./keytool/keytool-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/keytool-maven-plugin) | Manipulates keys and keystores. | [GitHub](https://github.com/mojohaus/keytool/issues) |
| [***latex***](./latex-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/latex-maven-plugin) | Builds PDF documents from LaTeX, BibTeX and such. | [GitHub](https://github.com/mojohaus/latex-maven/issues) |
| [***license***](./license-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/license-maven-plugin) | Tools to deal with licenses and thirdparties of a maven project. | [GitHub](https://github.com/mojohaus/license-maven-plugin/issues) |
| [***mrm***](./mrm/mrm-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/mrm-maven-plugin) | Hosts a mock Maven Repository Manager for use when integration testing Maven plugins. | [GitHub](https://github.com/mojohaus/mrm/issues) |
| [***ounce***](./ounce-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/ounce-maven-plugin) | Perform Ouncelabs Ounce code security scans. | - |
| [***rpm***](./rpm-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/rpm-maven-plugin) | Assembles files into an RPM package. | [GitHub](https://github.com/mojohaus/rpm-maven-plugin/issues) |
| [***siteskinner***](./siteskinner-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/siteskinner-maven-plugin) | Apply a new skin on a published site generated by Maven | [GitHub](https://github.com/mojohaus/siteskinner-maven-plugin/issues) |
| [***sql***](./sql-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/sql-maven-plugin) | Execution of SQL statements. | [GitHub](https://github.com/mojohaus/sql-maven-plugin/issues) |
| [***templating***](./templating-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/templating-maven-plugin) | Filters sources the Maven Right Way. | [GitHub](https://github.com/mojohaus/templating-maven-plugin/issues) |
| [***tidy***](./tidy-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/tidy-maven-plugin) | Sorts the sections of a ***pom.xml*** into the canonical order. | [GitHub](https://github.com/mojohaus/tidy-maven-plugin/issues) |
| [***truezip***](./truezip/truezip-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/truezip-maven-plugin) | Manipulates archive files. | [GitHub](https://github.com/mojohaus/truezip/issues) |
| [***versions***](./versions-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/versions-maven-plugin) | Supports various tasks for updating the versions of components in the POM. | [GitHub](https://github.com/mojohaus/versions-maven-plugin/issues) |
| [***vfs***](./vfs/vfs-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/vfs-maven-plugin) | Maven plugin for [Apache Commons Virtual File System (VFS)](https://commons.apache.org/proper/commons-vfs/). | [GitHub](https://github.com/mojohaus/vfs/issues) |
| [***wagon***](./wagon-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/wagon-maven-plugin) | Transfer files between URLs. | [GitHub](https://github.com/mojohaus/wagon-maven-plugin/issues) |
| [***xml***](./xml-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/xml-maven-plugin) | XML transformation and validation. | [GitHub](https://github.com/mojohaus/xml-maven-plugin/issues) |

## Pre-release Plugins

The following are pre-releases of plugins. They have had releases, but are not deemed ready for production use yet.

|  | Plugin |  | Version |  | Description |
| **Generators / Compilers / Translators** |  | *Plugins providing support for code generation, compilation and translation.* |
| [***apt***](./apt-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/apt-maven-plugin) | Annotation Processing Tool. |
| [***cbuilds***](./cbuild-parent/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/rpm-cbuild-maven-plugin) | Convert Autoconf projects into RPMs. |
| [***enchanter***](./enchanter/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/enchanter-maven-plugin) | Execute expect like scripts over telnet/ssh sessions. |
| [***jspc***](./jspc/) | [central](https://search.maven.org/artifact/org.codehaus.mojo.jspc/jspc-maven-plugin) | Support for JSP compilation w/pluggable JSP compiler implementations. |
| [***native***](./maven-native/native-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/native-maven-plugin) | Compile C and C++ sources. |
| [***retrotranslator***](./retrotranslator-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/retrotranslator-maven-plugin) | Translates JDK 5.0 classes to be compatible with a 1.4 JVM. |
| [***servicedoc***](./servicedoc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/servicedocgen-maven-plugin) | Generates nice REST Documentation from JAX-RS |
| [***smc***](./smc-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/smc-maven-plugin) | State Machine Compiler. |
| [***springws***](./springws-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/springws-maven-plugin) | Spring ws plugin for extracting .wsdl files. |
| **IDEs** |  | *Plugins that support integration with integrated developer environments.* |
| [***ideauidesigner***](./ideauidesigner-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/ideauidesigner-maven-plugin) | Intellij IDEA form generation. |
| **Reporting** |  | *Plugins which generate reports.* |
| [***dashboard***](./dashboard-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/dashboard-maven-plugin) | Aggregate results from Checkstyle, Cobertura, Clover, Surefire, PMD, CPD, FindBugs, Taglist reports. |
| [***docbook***](./docbook-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/docbook-maven-plugin) | Support for Docbook transformations. |
| [***emma***](./emma-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/emma-maven-plugin) | [EMMA](https://github.com/mojohaus/emma-maven-plugin/issues) plugin for Maven 2. |
| [***jdiff***](./jdiff-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jdiff-maven-plugin) | Generates JDiff report. |
| **Scripting** |  | *Plugins which support script languages.* |
| [***javascript tools***](./javascript-maven-tools/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/javascript-maven-tools) | A set of tools to bring maven support to JavaScript developers. |
| [***jruby***](./jruby-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jruby-maven-plugin) | JRuby scripting support for Maven. |
| **Tools** |  | *Miscellaneous tools available through Maven.* |
| [***batik***](./batik-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/batik-maven-plugin) | Rasterizes SVGs using Apache Batik. |
| [***dbupgrade***](./dbupgrade/dbupgrade-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/dbupgrade-maven-plugin) | Incremental Database Upgrade. |
| [***ianal***](./ianal-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/ianal-maven-plugin) | "I am not a lawyer." |
| [***jalopy***](./jalopy-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jalopy-maven-plugin) | Formats java source files following a coding convention. |
| [***jasperreports***](./jasperreports-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/jasperreports-maven-plugin) | Compiles Jasper Report Design Files. |
| [***nsis***](./nsis-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/nsis-maven-plugin) | Utilizes the NSIS command line installer script compiler to generate a Windows installer exe from a setup.nsi script. |
| [***osxappbundle***](./osxappbundle-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/osxappbundle-maven-plugin) | Bundles Maven projects as OS X applications. |
| [***properties***](./properties-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/properties-maven-plugin) | Read and write properties files. |
| [***ship***](./ship-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/ship-maven-plugin) | Helps shipping releases when doing Continuous Deployment. |
| [***solaris***](./solaris/solaris-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/solaris-maven-plugin) | Creates System V packages. |
| [***unix***](./unix/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/unix-maven-plugin) | Creates packages for all common UNIX platforms. |
| [***webminifier***](./webminifier-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/webminifier-maven-plugin) | Provides JavaScript and CSS minification for Maven projects. |
| [***webstart***](./webstart/webstart-maven-plugin/) | [central](https://search.maven.org/artifact/org.codehaus.mojo/webstart-maven-plugin) | Prepare webstart applications. |

## Plugin Graveyard

These are plugins which been deprecated or are no longer being maintained.

| **Plugin** | **Description** |
| ***antlr3*** | Superseded by [Maven plugin for ANTLR V3](https://github.com/mojohaus/antlr3-maven-plugin/issues). |
| ***dbunit*** | Moved to [Maven plugin for dbUnit](https://github.com/dbunit/dbunit-maven-plugin). |
| ***failsafe*** | Moved to [Maven Failsafe Plugin](https://github.com/mojohaus/failsafe-maven-plugin/issues). |
| ***groovy*** | Moved to [GMaven](https://github.com/mojohaus/groovy/issues). |
| ***jboss*** | Superseded by [JBoss AS7 Deployment Plugin](https://github.com/mojohaus/jboss-maven-plugin/issues) |
| ***jboss-sar*** | Deprecated use the [jboss-packaging](https://github.com/mojohaus/jboss-sar-maven-plugin/issues) plugin instead. |
| ***jetty*** | Superseded by [Mortbay official Jetty maven plugin](https://github.com/mojohaus/jetty-maven-plugin/issues). |
| ***lesscss*** | Moved to [LESS CSS Maven Plugin](https://github.com/mojohaus/lesscss-maven-plugin/issues) at GitHub. |
| ***minijar*** | Added as minimizeJar parameter to the [maven-shade-plugin](https://github.com/mojohaus/minijar-maven-plugin/issues). |
| ***platform-detector*** | Deprecated use the [rpm-cbuild:platform-detect](https://github.com/mojohaus/cbuild-parent/issues) goal instead. |
| ***project-sources*** | Deprecated use [wagon-maven-plugin](./wagon-maven-plugin) or [maven-dependency-plugin](https://github.com/mojohaus/cbuild-parent/issues) instead. |
| ***netbeans-freeform*** | NetBeans has developed its own Maven support: *https://netbeans.org/features/ide/build-tools.html* |
| ***nb-repository-plugin*** | Moved to Apache NetBeans (incubator) : *https://bits.netbeans.org/mavenutilities/nb-repository-plugin/* |
| ***nbm-maven-plugin*** | Moved to Apache NetBeans (incubator) : *https://bits.netbeans.org/mavenutilities/nbm-maven-plugin/* |
| ***openjpa*** | Moved to and maintained by the Apache OpenJPA project: *https://openjpa.apache.org/enhancement-with-maven.html* |
| ***rat*** | Moved to the [Apache Creadur Project](https://creadur.apache.org/rat/apache-rat-plugin/). |
| ***remote-source*** | Deprecated use [wagon-maven-plugin](./wagon-maven-plugin) or [maven-dependency-plugin](https://github.com/mojohaus/cbuild-parent/issues) instead. |
| ***shade*** | Moved to the official Maven plugins and is now maintained as [Maven Shade Plugin](https://github.com/mojohaus/shade-maven-plugin/issues). |
| ***shitty*** | Superseded by the official [Maven Invoker Plugin](https://github.com/mojohaus/shitty-maven-plugin/issues). |
| ***sysdeo-tomcat*** | Superseded by [Eclipse WTP](https://github.com/mojohaus/sysdeo-tomcat-maven-plugin/issues) |
| ***tomcat*** | Moved to the official Maven plugins and is now maintained in The Tomcat Project : [tomcat-maven-plugin](https://github.com/mojohaus/tomcat-maven-plugin/issues) |
| ***wsdl2java*** | Deprecated use the [axistools-maven-plugin](https://github.com/mojohaus/wsdl2java-maven-plugin/issues) instead. |
| ***xfire*** | Deprecated use the [Maven cxf plugins](https://github.com/mojohaus/xfire-maven-plugin/issues) instead. |
| ***xmlbeans*** | Superseded by [XmlBeans Maven Plugin](https://xmlbeans.apache.org/guide/Maven.html). |
| ***xslt*** | Deprecated use the [xml-maven-plugin](https://www.mojohaus.org/xml-maven-plugin/) instead. |
