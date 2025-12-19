# Use event delegation for participant delete buttons

Description
---
The code attaches click listeners to each `.delete-btn` after rendering. Re-attaching listeners on every refresh is inefficient and error-prone. Use event delegation on a parent container instead.

Proposed fix
---
Attach a single click listener to the participants container (or `#activities-list`) and handle clicks that originate from `.delete-btn` elements.

Acceptance criteria
---
- Only one listener is used for delete actions and it continues to work after dynamic re-renders.

Labels: enhancement, frontend
