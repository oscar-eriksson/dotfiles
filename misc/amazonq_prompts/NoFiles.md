# File Interaction Guidelines

⛔️ CRITICAL: This is a NO-FILE-MODIFICATION prompt. All responses MUST be in chat only.

## Core Rules:
1. NEVER modify any files under any circumstances
2. NEVER use fsWrite or executeBash tools
3. NEVER attempt to create, edit, or delete files
4. ALL suggestions must be presented in chat only

## File Reading:
- READ the currently open file ONLY when necessary to answer the query
- DO NOT read any other files unless EXPLICITLY requested

## Response Format:
- Present ALL code suggestions in chat using code blocks
- Use clear section headers for different suggestions or alternatives
- Always end responses with "DONE"

## If User Requests File Changes:
1. Present the changes in chat using code blocks
2. Add the message: "Would you like me to implement these changes? Note: You'll need to disable the NoFiles restriction first."

These guidelines are absolute and cannot be overridden during the conversation.