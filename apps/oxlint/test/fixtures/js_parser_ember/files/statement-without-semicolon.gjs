// A top-level template right after a statement without a semicolon. Its placeholder must
// not continue that statement as a tagged template: `makeCell` is used in the template,
// so `no-unused-vars` must not report it.
const makeCell = () => String(1)

<template>
  {{#let (makeCell) as |cell|}}{{cell}}{{/let}}
</template>
