# Add confirmation before unregistering a participant

Description
---
Clicking the delete button immediately sends an unregister request. Add a confirmation dialog to avoid accidental unregistrations.

Proposed fix
---
- Show a `confirm()` dialog or a custom modal before sending the DELETE request.

Acceptance criteria
---
- Unregister requests are only sent after explicit user confirmation.

Labels: enhancement, frontend
