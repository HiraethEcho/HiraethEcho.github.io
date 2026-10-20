const diagrams = document.querySelectorAll("main pre.mermaid");

if (diagrams.length) {
  import("https://cdn.jsdelivr.net/npm/mermaid@12/dist/mermaid.esm.min.mjs")
    .then(async ({ default: mermaid }) => {
      mermaid.initialize({ startOnLoad: false, securityLevel: "strict" });
      await mermaid.run({ nodes: diagrams });
    })
    .catch((error) => console.error("Mermaid could not be loaded", error));
}
