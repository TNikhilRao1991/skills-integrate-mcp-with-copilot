# Clear `<select>` before repopulating to avoid duplicate options

Description
---
`fetchActivities()` appends `<option>` elements to the activity `<select>` on every refresh. When the activities list is refreshed (for example after signing up/unregistering) options are duplicated.

Steps to reproduce
---
1. Open the app and wait for activities to load.
2. Sign up or unregister for any activity.
3. Observe the activity dropdown now contains duplicate entries.

Proposed fix
---
Clear the `<select id="activity">` options (except the placeholder) before re-populating, or rebuild the select from scratch.

Acceptance criteria
---
- No duplicate `<option>` elements appear after repeated calls to `fetchActivities()`.
- Manual verification shows a single option per activity.

Labels: enhancement, frontend
