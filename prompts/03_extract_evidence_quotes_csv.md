# Follow-up Prompt: CSV Quote Extraction with Context

## Your Task

Based on the dossier(s) you have just analyzed, extract the **10 most forensically significant quotes** that serve as primary evidence for your findings.

## Critical Formatting Rules

You **MUST** format your output as a valid CSV with a header row. Adhere strictly to these rules:

*   **Delimiter:** Use a semicolon (`;`) to separate fields.
*   **Enclosure:** Enclose **every** field in double quotes (`"`).
*   **Escaping:** Any double quotes that are part of the original quote text **must** be properly escaped (e.g., by doubling them: `""`).
*   **No extra text:** Your response must contain **ONLY** the CSV data and nothing else. Do not add any introductory or concluding sentences.

## Required CSV Structure

Your output must use the following header row and column order exactly:

`"EVIDENCE_ID";"SENDER";"SENDER_ROLE";"RECIPIENTS";"QUOTE";"CONTEXT";"CATEGORY"`

### Column Definitions

*   **EVIDENCE_ID:** The full `Message-ID` of the source email.
*   **SENDER:** The email address of the sender.
*   **SENDER_ROLE:** The specific, **context-derived role** of the sender, as determined in your main analysis. This role should describe their function within the events of the dossier (*e.g., "Lead on Project Phoenix", "External Legal Advisor", "Head of Trading Desk"*).
*   **RECIPIENTS:** The complete, original recipient list from the "To" field.
*   **QUOTE:** The exact, verbatim quote.
*   **CONTEXT:** A brief, one-sentence explanation of the quote's **forensic relevance**. This is crucial for quotes that are cryptic or lack meaning in isolation. It should answer the question: "Why is this quote evidence of wrongdoing or an anomaly?"
    *   *Example Quote:* `"maybe"`
    *   *Example Context:* `"This was the sender's reply to a direct question about deleting specific audit files, indicating potential complicity or deliberate ambiguity."`
*   **CATEGORY:** Classify the quote into **ONE** of the following official categories, consistent with your main analysis:
    *   `Financial Anomaly`
    *   `Information Control`
    *   `Regulatory Gaming`
    *   `Conflict of Interest`
    *   `Psychological Stress`
    *   `Other Anomaly`