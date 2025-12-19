# Add optimistic UI / loading states for signup and unregister

Description
---
The UI does not indicate network activity for signup/unregister requests. Adding loading states (disable form, spinner, or temporary optimistic update) improves perceived performance and prevents double submissions.

Proposed fix
---
- Disable the signup button while the request is in-flight and show a small spinner.
- Disable delete buttons while their unregister request is in-flight.

Acceptance criteria
---
- UI provides clear loading feedback and prevents duplicate clicks while requests are pending.

Labels: enhancement, frontend
