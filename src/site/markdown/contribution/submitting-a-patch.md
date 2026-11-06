# Submitting a Patch

What's the quickest way to get a problem solved? Well, the MojoHaus plugins are open-source so you can always go and try patching them yourself. Every plugin web site has a page titled "Source Repository" that provides instructions on how to checkout the plugin's source code.

When creating a patch, please adopt our [code conventions](../development/guidelines.html). In case the existing code doesn't follow these conventions, avoid reformatting of lines that are otherwise unrelated to the issue being fixed. A committer will need to review a patch before its acceptance and any noise in the diff due to whitespace/formatting changes makes this harder. Furthermore, be sure to use only those classes/methods and language features that are supported by the minimum Java version targetted by the plugin.

Once the patch is completed, the preferred way to share it with the community is to [fork the repository](https://help.github.com/articles/fork-a-repo/) and create a [pull request](https://help.github.com/articles/using-pull-requests/) on GitHub.

Again, patches need to be reviewed by committers so please avoid cumulative pull requests that try to fix several issues at once. Instead, rather submit pull requests that address each issue independently. Finally remember that - just like good code - a good pull request comes with a test to prove its proper function.
