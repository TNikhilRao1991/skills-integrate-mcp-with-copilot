# Improve message element class handling

Description
---
`messageDiv.className = "success"` (and similar) overwrites existing classes (including `hidden`) and relies on exact classname usage. Prefer `classList.add()`/`remove()` to avoid losing unrelated classes.

Proposed fix
---
Refactor message show/hide and type logic to use `classList` methods and consistent utility classes (e.g., `is-hidden`, `is-success`, `is-error`).

Acceptance criteria
---
- Messages reliably show and hide without losing other classes.
- Styling remains correct after refactor.

Labels: enhancement, frontend
