# Reporting an Issue

What to do when a plugin doesn't work as expected? First, make sure it's not just a misconfiguration of the plugin in your POM and have a second glance at the documentation of the plugin, in particular the usage guide and examples. If the documentation doesn't help either, you should contact the community via the [user mailing list](../mailing-lists.html).

If the issue you are facing happens to be a bug in the plugin itself, it's time to visit our issue tracking system. Where is that? The exact URL to the issue tracker for a plugin is documented on the web site of that particular plugin. Watch out for the page "Issue Tracking" in the menu "Project Information" of the left navigation pane.

When creating the bug report, please be precise in what problem you have and how to reproduce it. It's very much appreciated if you provide a minimal test project that exhibits the issue. While this might require some additional work for you, it can accelerate the resolution of the problem. Furthermore, details about your environment could be key to reproduce a problem, i.e. tell us about your:

- Operating system (Windows, Linux, Solaris, OS/X etc.)
- Java version (1.4, 1.5, 1.6 etc.)
- Java vendor (Sun, IBM, Apple etc.)
- Maven version
- Plugin versions

Most of this information can easily be collected and reported if you simply provide a debug log of the failing Maven build, e.g. run `mvn ... -X > debug.log` and attach the resulting `debug.log` file to the JIRA issue.

Of course, your contribution need not stop at this point. Helping hands are always welcome, so feel free to [provide a patch](./submitting-a-patch.html) as well.
