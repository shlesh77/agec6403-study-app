# AGEC 6403 Study App: how to add content

The app is one HTML file, `AGEC6403_Study_App.html`. It is built by joining the files in `src/` in name order:

| File | Holds |
|---|---|
| `src/00_head.html` | Title, fonts, MathJax, all styling |
| `src/10_ch0_ch1.html` | Chapter 0 (roadmap) and Chapter 1 (DGP) |
| `src/20_ch2_ch3.html` | Chapter 2 (expected-profit maximization) and Chapter 3 (plateaus) |
| `src/30_ch4_ch5.html` | Chapter 4 (likelihood and tests) and Chapter 5 (Bayesian) |
| `src/40_ch6_ch7.html` | Chapter 6 (utility, CE) and Chapter 7 (E-V, FSD, SSD, SDRF, SERF) |
| `src/50_ch8_ch10.html` | Chapter 8 (integration, direct EU), Chapter 9 (writing), Chapter 10 (preview) |
| `src/90_pages.html` | Exam prep, Glossary, How to add content pages |
| `src/99_app.html` | App engine and interactive labs (no need to edit to add content) |

After editing anything in `src/`, rebuild:

```bash
bash build.sh
```

Open `AGEC6403_Study_App.html` in a browser to check. To update the online copy, ask Claude Code to republish it to the same artifact link.

## The easiest way

Open Claude Code in the AGEC 6403 folder and describe what to add, for example:

> Add a lesson to Chapter 10 on stochastic frontiers from my Nov 4 notes, with a quiz, flashcards and one-line review questions, then rebuild and republish the study app.

## Building blocks

New chapter (empty template; `data-color` 1–10; add `data-preview` if not yet taught):

```html
<template data-chapter="11" data-part="IV. Special topics" data-title="Duality" data-dates="Nov 9 · Nov 11" data-color="4"></template>
```

New lesson (ids must be unique; any section can be left out):

```html
<template data-lesson="c11l1" data-ch="11" data-title="Profit functions" data-src="Lecture Nov 9" data-yt="profit function Hotelling lemma">
  <section data-s="learn"> <h3>Heading</h3> <p>Text with math \( \pi(p,w) \)</p> </section>
  <section data-s="examples"> <details class="sol"><summary>Problem</summary><div class="body">Solution</div></details> </section>
  <section data-s="watch"> <a class="vid" data-tag="Start here" data-by="Channel" href="https://www.youtube.com/watch?v=VIDEO_ID">Title</a> </section>
  <section data-s="quiz">
    <div class="q" data-a="1"><div class="stem">Question?</div><ol><li>A</li><li>B (right)</li><li>C</li></ol><div class="why">Explanation.</div></div>
  </section>
  <section data-s="cards"> <div class="fc"><div class="f">Front</div><div class="b">Back</div></div> </section>
</template>
```

`data-a` is the zero-based index of the right answer (0 = A, 1 = B, …).

One-line review questions for chapter N:

```html
<template data-review="11">
  <div class="ol"><div class="oq">Question</div><div class="oa">Answer</div></div>
</template>
```

Boxes inside lessons: `formula`, `clarify` (blue explanation), `prof` (what the professor said), `exam` (exam alert), `warn` (common mistake), `tip`. Example: `<div class="exam"><span class="lbl">Exam alert</span>Text</div>`.

Interactive labs can be dropped into any lesson: `<div data-tool="plateau"></div>` (also `newsvendor`, `bayes`, `ce`, `rank`, `quad`, `quadopt`, `revenue`; `rank` accepts `data-preset="cotton"` or `"abc"`).

Math: inline `\( … \)`, display `\[ … \]`. Inside math write `&lt;` and `&gt;` for < and >.

## Personal additions without editing files

- Each lesson has a **My notes** tab.
- **Cards → Add your own card** adds flashcards.
- These live in your browser; use **More → Back up your progress** to copy them to another device.

## Sources used

Syllabus (QUIZ/Canvas Files), Class Notes Markdown/AGEC6403_Complete_Dated_Class_Notes.md (lectures Aug 31–Oct 30), Class Papers/Class.rtf transcript, assignment prompts 1–9. YouTube links were checked to exist on 2026-11-10.
