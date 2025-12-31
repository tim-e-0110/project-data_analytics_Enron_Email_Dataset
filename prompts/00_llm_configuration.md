# LLM Configuration & Methodology

This document specifies the exact configuration and model used for the qualitative analysis to ensure reproducibility. All analyses were performed using Google's Gemini 2.5 Pro model via the Google AI Studio web UI.

## 1. Model Selection

-   **Model Used:** `Gemini 2.5 Pro`
    -   **Reasoning for this Project:** For this portfolio project, Gemini 2.5 Pro was consistently used for all tasks (analysis, synthesis, and extraction). This streamlined the manual workflow within the given time frame and leveraged its strong, general-purpose reasoning capabilities.
    -   **Considerations for a Production Environment:** In a scaled, automated forensic pipeline, a more targeted model selection would be implemented. For instance, a faster, more cost-effective model like `Gemini Flash` or a local hosted LLM would be used for structured data extraction (like the CSV quote generation), while the more powerful `Pro` model would be reserved for complex reasoning tasks. This optimization would be implemented directly within a Python environment (e.g., in a Jupyter Notebook using an API) to automate the processing of hundreds or thousands of dossiers.

## 2. Core Execution Parameters

The following parameters were consistently applied across all interactions:

-   **Temperature:** `0.2`
    -   **Reasoning:** A low temperature was selected to ensure deterministic and factual outputs, minimizing creativity and hallucinations which would be unacceptable in a forensic context.
-   **Web Search (Google Search):** `OFF`
    -   **Reasoning:** Critically important to enforce the "Tabula Rasa" principle. The model was explicitly prevented from accessing external information to avoid contaminating the analysis with pre-existing knowledge about the Enron case.

## 3. Workflow

1.  Start a new, clean chat session for each analysis to prevent context bleed.
2.  Apply the configuration above.
3.  Configure the System Prompt (System instructions) (`01_...` or `02_...`).
4.  Attach the dossier TXT file(s).
5.  After the main report is generated, insert the `03_...` prompt as chat input in the same session to extract quotes.