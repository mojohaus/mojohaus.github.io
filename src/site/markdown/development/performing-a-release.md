# Performing a Release

This is a check list of stuff that has to be done before a new version of a plugin is released.

* [Preparing to Release](#Preparing_to_Release)
* [Preparing for the First Production Release](#Preparing_for_the_First_Production_Release)
* [Making GPG Keys](#Making_GPG_Keys)
* [Importing CA Certificates](#Importing_CA_Certificates)
* [Preparing your environment](#Preparing_your_environment)
* [Staging the Release](#Staging_the_Release)
* [Call a Vote](#Call_a_Vote)
* [Promoting the Release](#Promoting_the_Release)
* [Dropping the Release](#Dropping_the_Release)
* [Releasing the MojoHaus Parent POM](#Releasing_the_MojoHaus_Parent_POM)

## Preparing to Release

* Make sure the site documentation is up to date and follows the [Development Guidelines](./guidelines.html).
* All open GitHub issues should be closed or agreed to be scheduled for a future version.
* Plugin must be documented and preferably have unit and integration tests.
* If `changes-report` of [maven-changes-plugin](https://maven.apache.org/plugins/maven-changes-plugin/) is used, update `changes.xml` to include all issues in GitHub that were fixed. (If `github-report` is used, this information is retrieved automatically from GitHub.)
* If the release is a bugfix release (incrementing z): explicitly document the bugs fixed.
* If the release is a minor release (incrementing y): document the new features added. Make sure that these new features are properly documented, including:
  * Javadoc tags if the Mojo is written in Java
* Make sure you include the correct information in the `scm` section:

```xml
<project>
  <scm>
    <connection>scm:git:https://github.com/mojohaus/PLUGIN_NAME.git</connection>
    <developerConnection>scm:git:ssh://git@github.com/mojohaus/PLUGIN_NAME.git</developerConnection>
    <url>https://github.com/mojohaus/PLUGIN_NAME</url>
  </scm>
</project>
```

* Verify that the project doesn't depend on SNAPSHOTs anymore (the [maven-release-plugin](https://maven.apache.org/plugins/maven-release-plugin/examples/prepare-release.html) will check this too)
* Ensure the plugin complies with its intended minimum JRE requirement. For instance, if Java 1.5 is to be supported, actually set your `JAVA_HOME` to a JDK 1.5 and run `mvn clean verify`. This will catch references to classes or methods that were accidentally used but are only available in later versions of Java. Also consider to add our [animal-sniffer-maven-plugin](/animal-sniffer/animal-sniffer-maven-plugin/) which can check the code against the signature of the required JDK version.
* To *generate* the documentation of the plugin, you will need to use at least Maven 2.1.0 because of the [maven-site-plugin](https://maven.apache.org/plugins/maven-site-plugin/) preconfigured in the mojo-parent. To *deploy* you can't use Maven 2.1.0 or 2.2.0, because they produce incorrect GPG signatures and checksums respectively. This means it requires at least Maven 2.2.1 to perform a complete release. But this doesn't mean you can't use an earlier version of Maven to *build* or *use* this plugin.
* Check that the POM properly declares its dependencies, i.e. run `mvn dependency:analyze` and fix any problems.
* To be able to use the maven-release-plugin you need to have a git client available on your system path. To verify if it's there, execute `git help` on the project root.
* Be sure you have generated a gpg-key before performing the release.

## Preparing for the First Production Release

When a plugin is ready to have its first production release (i.e. not an alpha or beta release) there are a couple of extra things that needs to be taken care of:

* Check GitHub issue configuration.
* Make sure that the plugin's site passes the documentation checker plugin test. Run:

```bash
mvn docck:check
```

  If there are any errors - fix them. There are a couple of errors that might not need to be fixed. As an example: it's better *not* to add an FAQ document than to add a bogus one.

## Making GPG Keys

Before releasing for the first time you have to generate a GPG key and publish it.
Information can also be found on Sonatype's [How to Generate PGP Signatures with Maven](http://blog.sonatype.com/2010/01/how-to-generate-pgp-signatures-with-maven/).

* Download GPG from <http://www.gnupg.org/download/>, follow the instructions and install it to your system. Verify your gpg installation by running gpg with the version flag, i.e. `gpg --version`
* Execute `gpg --full-generate-key` and answer the questions. Most of the time you can use the default.

| Prompt | Selection |
|---|---|
| Please select what kind of key you want:<br>(1) RSA and RSA (default)<br>(2) DSA and Elgamal<br>(3) DSA (sign only)<br>(4) RSA (sign only)<br>(7) DSA (set your own capabilities)<br>(8) RSA (set your own capabilities)<br>(9) ECC and ECC<br>(10) ECC (sign only)<br>(11) ECC (set your own capabilities)<br>(13) Existing key<br>(14) Existing key from card | 9 |
| Please select which elliptic curve you want:<br>(1) Curve 25519<br>(3) NIST P-256<br>(4) NIST P-384<br>(5) NIST P-521<br>(6) Brainpool P-256<br>(7) Brainpool P-384<br>(8) Brainpool P-512<br>(9) secp256k1 | 1 |
| Please specify how long the key should be valid.<br>0 = key does not expire<br>&lt;n&gt; = key expires in n days<br>&lt;n&gt;w = key expires in n weeks<br>&lt;n&gt;m = key expires in n months<br>&lt;n&gt;y = key expires in n years | 4y |
| Real name: | &lt;your real name&gt; |
| Email address: | &lt;your email address&gt; |
| Comment: | &lt;empty&gt; |
| Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? | O |

* Execute `gpg --list-sigs "<your real name>" && gpg --armor --export "<your real name>"` and visit <https://hkps.pool.sks-keyservers.net/> to distribute your public key, so users can verify your files. This webpage contains a form where you have to copy your key.
* Update <https://github.com/mojohaus/mojohaus.github.io/blob/site/src/site/resources/KEYS> by expanding this file with your key. If you deploy the site by running `mvn -Preporting verify site site:stage scm-publish:publish-scm` the key will become available on the mojo-site. Since all mojo-developers should put their key here it's easy for users to verify mojo-artifacts.

## Preparing your environment

For any deployment you have to make contact with <https://central.sonatype.com/>, for which authentication is required. The best way to do this is to include the following sections in your personal `settings.xml` and fill in the properties with your own token generated in the portal.

```xml
<settings xmlns="http://maven.apache.org/SETTINGS/1.2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.2.0 https://maven.apache.org/xsd/settings-1.2.0.xsd">
  <servers>
    <server>
      <id>sonatype-central-portal</id>
      <username>jqhacker</username> <!-- central portal token -->
      <password>SeCrEt</password> <!-- central portal token -->
      <configuration>
        <njord.publisher>sonatype-cp</njord.publisher>
        <njord.releaseUrl>njord:template:release-sca</njord.releaseUrl>
      </configuration>
    </server>
  </servers>
</settings>
```

(Note that using [Maven password encryption](https://maven.apache.org/guides/mini/guide-encryption.html#How_to_encrypt_server_passwords) is possible but may not work in combination with the `oss-sonatype.password` property, perhaps due to difficulties with brace expansion. Instead, duplicate your encrypted password into each of the `server` sections.)

## Staging the Release

The release process should be done using the [Maven Release Plugin](https://maven.apache.org/plugins/maven-release-plugin/):

* Execute `mvn release:prepare`

  This will make sure all code is checked in, tag the release and make sure the POM has no snapshot dependencies. Make sure that you are able to push changes and tags via SSH.

* Execute `mvn release:perform`

  This will build the plugin, javadocs and source. Everything will be deployed to the Nexus Repository Manager of Sonatype OSSRH, ready to be staged. (This will typically not build the site.)

* Log into <https://oss.sonatype.org/> and "Close" the staging repository.

* Build and deploy the plugin site

  Typically, the command is `cd target/checkout` then `mvn verify site site:stage scm-publish:publish-scm` on a mono-module plugin but could vary. Consult the mojo's README file.

  You may need to configure a ssh key to your GitHub account: see GitHub's [Connecting to GitHub with SSH](https://help.github.com/articles/connecting-to-github-with-ssh/) guide.

  For the first site deployment, when `gh-pages` branch does not exist yet, you'll need to do the job by hand: create an orphan branch `git checkout --orphan gh-pages`, then clean it `rm .git/index ; git clean -fdx` before copying initial site content, committing and pushing.

* Verify that the plugin site deployment occurred successfully.

* Draft a release in GitHub

  Go to the release tag in GitHub: `https://github.com/mojohaus/PLUGIN_NAME/releases` and select the release you've staged.

  Via "Edit Tag" provide a link to the Changelog in for this release in the description (e.g. linking to the GitHub milestone list of closed tickets).

  Mark the release as "pre-release" while it's under the voting process.

## Call a Vote

Before a release can occur, an optional vote may take place. This is initiated with an email to the [dev list](mailto:mojohaus-dev@googlegroups.com), preferrably with a subject that starts with `[VOTE]`. Explain the plugin, status and any other info you feel relevant. The standard is to wait 72 hours for responses. This gives other developers time to verify the quality of the plugin before placing their vote. See the [Apache Voting Guidelines](http://www.apache.org/foundation/voting.html) for more information. You can use a [template](./releasevote-mailtemplate.html) to be sure your email contains all the expected information.

## Promoting the Release

When the vote (if any) has passed, do the following:

* Reply to the latest vote and summarize the result and prefix the subject with **[RESULT]**.
* Log into <https://oss.sonatype.org/> and "Release" the staging repository.
* Wait some time and find the artifacts synced on central. The synchronization typically occurs every 4 hours but allow for it take up to 24 hrs.
* Close the current milestone in github, and create new milestone(s) as required.
* Remove the "pre-release" tag from the release tag in GitHub.
* Send out an announcement email to [mojohaus-dev@googlegroups.com](mailto:mojohaus-dev@googlegroups.com) and [users@maven.apache.org](mailto:users@maven.apache.org). You can use a [template](./announcement-mailtemplate.html) to be sure your email contains all the expected information. Ensure you've subscribed to all these mailing lists, otherwise the message will be bounced.
* TODO: if there's a feed containing all releases, get the release into that feed.

## Dropping the Release

If the vote failed, the following steps have to be taken:

* Log into <https://oss.sonatype.org/> and "Drop" the staging repository.
* Rollback any SCM-changes. Be aware that the `release:rollback` doesn't remove the tag. You must do this by hand, use `git tag -d myplugin-1.2.3`.
* To remove a remote tag on GitHub, use `git push origin :refs/tags/myplugin-1.2.3`.
* Run `siteskinner:skin -DsiteDeploy` to restore the documentation of the latest released plugin.

## Releasing the MojoHaus Parent POM

Of course, to release the Mojo Parent POM, a vote takes place just for an ordinary plugin release. But when it comes to actually perform the release, there are some differences to watch out for:

1. Execute `mvn release:prepare`
2. Execute `mvn release:perform -Dgoals=deploy`

  The important thing to note here is the parameter `-Dgoals=deploy`. By default, the Release Plugin would execute the phases `deploy` and `site-deploy` on the parent POM. However, the site of the parent POM is not meant to be deployed, we have a separate project for this. The configuration of the site distribution in the parent POM exists solely for the purpose of inheritance by the plugins. Accidentally deploying the parent's site would damage the Mojo website, most notably the `index.html`.

3. Test that the new parent is working

  Manually update (without committing) one or two plugins on your local machine to use the new parent. Then run:

  `mvn clean verify site -Pmojo-release`

4. Update the [Development Guidelines](./guidelines.html) to indicate the new POM version.
