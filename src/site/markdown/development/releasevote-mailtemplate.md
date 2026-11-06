# Mail Template for a Release Vote

This template contains most of the data developers expect to do validate a vote.
Replace all `UPPER_CASE_TERMS` with its equivalent value.
You're free to add or skip sections, just see this as a good starting point.

| Header | Value |
|---|---|
| **Subject** | [VOTE] Release PROJECT_NAME version PROJECT_VERSION |
| **To** | mojohaus-dev@googlegroups.com |

```text
Hi,

I'd like to release version PROJECT_VERSION of the PROJECT_NAME

PROJECT_DESCRIPTION

We solved NR_OF_SOLVED_ISSUES issues:
https://github.com/mojohaus/PROJECT_NAME/issues?q=milestone%3APROJECT_VERSION+is%3Aclosed

There are still a couple of issues left in GitHub:
https://github.com/mojohaus/PROJECT_NAME/issues

Staging Repositories:
Exclusive: https://oss.sonatype.org/content/repositories/SOME_SPECIFIC_STAGING_VERSION

(Staging) Site:
http://www.mojohaus.org/PROJECT_NAME

Diff: https://github.com/mojohaus/PROJECT_NAME/compare/PROJECT_NAME-PROJECT_PREVIOUS_VERSION...PROJECT_NAME-PROJECT_VERSION

ADDITIONAL_INFORMATION

 [ ] +1
 [ ] +0
 [ ] -1

The vote is open for 72 hours and will succeed by lazy consensus.



Regards / Cheers / 

YOUR_NAME
```
