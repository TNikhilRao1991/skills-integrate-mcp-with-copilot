# Improve client-side validation and UX for signup form

Description
---
The form uses `type="email"` but could benefit from additional client-side validation such as trimming, normalizing, and inline error messages for missing/invalid input.

Proposed fix
---
- Trim and normalize submitted email.
- Show inline validation messages (not just the `#message` banner).
- Prevent submission for obviously malformed entries.

Acceptance criteria
---
- Invalid emails are prevented at the client with clear inline messages.
- Server still validates but unnecessary requests are avoided.

Labels: enhancement, frontend
