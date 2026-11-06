# Development Guidelines

All plugins in the **MojoHaus** project should follow these guidelines.

* Use the package `org.codehaus.mojo.<plugin>`, e.g.: `org.codehaus.mojo.jpox`.
* Name the mojos like this: `SomethingMojo`. The name should reflect the goal of this mojo (i.e. the `@goal` javadoctag of the class).
* Use `org.codehaus.mojo` for the groupId of any developed Maven plugin. Other projects/artifacts could use this groupId or a sub-context.
* Use the `<plugin>-maven-plugin` convention for the artifactId of any developed Maven plugin.
* Use the `[Project] Maven Plugin` convention to name your plugin e.g. "Acme Maven Plugin", unless [Project] reflects a trademark. In such case use either "MojoHaus's Acme Maven Plugin" or "MojoHaus's Maven Plugin for Acme" to clarify it is a plugin *for* this product and not *by* this product.
* Sanity check all mojo parameters and throw a MojoExecutionException for invalid parameters.
* Use the [Maven Code Style](https://maven.apache.org/developers/conventions/code.html) when formatting your code.
* Do not check IDE specific files into version control but rather add those to `.gitignore`.

## Licensing

We accept any plugins that follow Codehaus's rules for licensing. We recommend that you use
[Codehaus's recommended license](http://hausmates.codehaus.org/) which is the MIT license. This license is usable
for both ASL and GPL covered software. For other acceptable licenses please read the
[Codehaus license overview](http://codehaus.org/customs/licenses.html).

Make sure that you include the license in a file called `LICENSE.txt` in the root of your project and that
all files include the license at the top of the file.

## MojoHaus Parents

Released plugins should derive from [the MojoHaus parent](/mojo-parent/), for the latest version see
[Maven Central](https://search.maven.org/artifact/org.codehaus.mojo/mojo-parent):

```xml
<project>
  <parent>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>mojo-parent</artifactId>
    <version>70</version>
  </parent>
  ...
</project>
```

## Plugin Site Template

Plugins should have a site that conforms to:

* The **MojoHaus** site template, see below
* The [Plugin Documentation Standard](https://maven.apache.org/guides/development/guide-plugin-documentation.html)
* The [Maven Documentation Checker Plugin](https://maven.apache.org/plugins/maven-docck-plugin/)

### For Mojo Parent 16 and Newer

Mojo parent 16 introduces a common `site.xml` file that is included in the parent artifact. It is inherited by the projects that use this parent. This means that there are less things that you have to specify yourself. If you are using Mojo parent 16 or newer, place this in your plugin's `src/site/site.xml`:

```xml
<project xmlns="http://maven.apache.org/DECORATION/1.3.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/DECORATION/1.3.0 http://maven.apache.org/xsd/decoration-1.3.0.xsd">
  <body>
    <breadcrumbs>
      <item name="MojoHaus" href="https://www.mojohaus.org/"/>
      <item name="${this.name}" href="${this.url}" />
    </breadcrumbs>

    <menu name="Overview">
      <item name="Introduction" href="index.html"/>
      <item name="Goals" href="plugin-info.html"/>
      <item name="Usage" href="usage.html"/>
      <item name="FAQ" href="faq.html"/>
    </menu>
    <menu name="Examples">
      <item name="description1" href="examples/example-one.html"/>
      <item name="description2" href="examples/example-two.html"/>
    </menu>
  </body>
</project>
```

Also make sure that the `<name>` element in your plugin's `pom.xml` contains this text:

```xml
<name>XXXXX Maven Plugin</name>
```

This name is used in the title of the pages in the generated site.

### For Mojo Parent 15 and Older

Place this in your plugin's `src/site/site.xml` for a starting point:

```xml
<project xmlns="http://maven.apache.org/DECORATION/1.3.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/DECORATION/1.3.0 http://maven.apache.org/xsd/decoration-1.3.0.xsd">
  <bannerLeft>
    <name>Mojo</name>
    <src>http://mojo.codehaus.org/images/mojo_logo.png</src>
    <href>http://mojo.codehaus.org</href>
  </bannerLeft>
  <bannerRight>
    <name>Codehaus</name>
    <src>http://mojo.codehaus.org/images/codehaus-small.png</src>
    <href>http://www.codehaus.org</href>
  </bannerRight>
  <body>
    <links>
      <item name="Mojo" href="http://mojo.codehaus.org"/>
      <item name="Maven" href="http://maven.apache.org/"/>
    </links>
    <menu name="Overview">
      <item name="Introduction" href="index.html"/>
      <item name="Goals" href="plugin-info.html"/>
      <item name="Usage" href="usage.html"/>
      <item name="FAQ" href="faq.html"/>
    </menu>
    <menu name="Examples">
      <item name="description1" href="examples/example-one.html"/>
      <item name="description2" href="examples/example-two.html"/>
    </menu>
    <menu ref="reports" />
  </body>
</project>
```
