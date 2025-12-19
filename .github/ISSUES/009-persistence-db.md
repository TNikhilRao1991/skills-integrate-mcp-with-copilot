# Replace in-memory activities with persistent storage

Description
---
Activity data is currently stored in an in-memory Python dict. This means all signups are lost on process restart. Add a persistence layer (SQLite, JSON file, or a proper DB) to retain data.

Proposed fix
---
- Introduce a simple SQLite backend or a JSON file for storage.
- Migrate the FastAPI endpoints to read/write from the persistence layer.

Acceptance criteria
---
- Activities and participants persist across server restarts.
- Existing endpoints remain compatible or have documented migration steps.

Labels: backend, enhancement
