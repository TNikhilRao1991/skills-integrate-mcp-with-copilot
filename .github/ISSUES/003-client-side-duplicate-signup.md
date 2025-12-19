# Add client-side check to prevent duplicate signup attempts

Description
---
The server rejects duplicate signups, but the client currently allows submitting the same email for an activity the user is already signed up for. Add a client-side check to prevent unnecessary requests and show immediate feedback.

Steps to reproduce
---
1. For an activity where the email is already in `participants`, submit the signup form with that email.
2. The client will POST and receive a 400 from the server.

Proposed fix
---
Before sending the POST, check if the provided email exists in the currently-rendered participants list for the selected activity; if so, show an inline message and do not POST.

Acceptance criteria
---
- No POST is sent when the email is already listed as a participant.
- The UI shows a clear inline message explaining the duplicate.

Labels: enhancement, frontend
