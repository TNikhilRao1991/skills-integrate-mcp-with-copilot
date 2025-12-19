# Show capacity/availability in the signup UI

Description
---
Currently availability is shown on activity cards, but the signup dropdown does not indicate which activities are full. Improve the signup UX by exposing availability directly in the select (e.g., "Chess Club (2 spots left)") and visually disabling full options.

Proposed fix
---
- Append availability text to `<option>` labels.
- Add `disabled` attribute to options for full activities.

Acceptance criteria
---
- Users can see remaining spots directly in the dropdown.
- Full activities are clearly marked and not selectable.

Labels: enhancement, frontend
