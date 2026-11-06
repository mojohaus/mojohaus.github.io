# Mail Template for an Announcement

This template contains most of the information users expect of an announcement.
Replace all `UPPER_CASE_TERMS` with its equivalent value.
You're free to add or skip sections, just see this as a good starting point.

| Header | Value |
|---|---|
| **Subject** | [ANN] PROJECT_NAME PROJECT_VERSION Released |
| **To** | mojohaus-dev@googlegroups.com, users@maven.apache.org |

```text
Hi,

The MojoHaus team is pleased to announce the release of the PROJECT_NAME version PROJECT_VERSION.

PROJECT_DESCRIPTION

PROJECT_URL

To get this update, simply specify the version in your project's plugin configuration: 

<plugin>
	<groupId>org.codehaus.mojo</groupId>
	<artifactId>PROJECT_ARTIFACTID</artifactId>
	<version>PROJECT_VERSION</version>
</plugin>

ADDITIONAL_INFORMATION

Release Notes

THE_RELEASE_NOTES_OR_REFERENCE


Enjoy,

The MojoHaus team.
 
YOUR_NAME
```
