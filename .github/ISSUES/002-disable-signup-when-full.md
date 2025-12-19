# Disable signup when activity is full

Description
---
Users can attempt to sign up for an activity even when `max_participants` has been reached. The UI should prevent or clearly indicate that signup is not possible for full activities.

Steps to reproduce
---
1. Identify an activity where `participants.length >= max_participants`.
2. Attempt to sign up via the form.

Proposed fix
---
- Disable selecting full activities in the dropdown, or
- Disable the signup button when the selected activity has no available spots, and show a helpful message.

Acceptance criteria
---
- Full activities cannot be submitted via the signup form from the UI.
- The user sees clear feedback explaining why signup is not allowed.

Labels: enhancement, frontend
