#import "@preview/cetz:0.1.2": canvas, chart

= Time Tracking
Content: expected effort & actual effort

// (Label, Time Spent Lukas, Time Spent Jann)
#let time_spent = (
  ([1], 0, 0),
  ([2], 0, 0),
  ([3], 0, 0),
  ([4], 0, 01),
  ([5], 0, 0),
  ([6], 0, 0),
  ([7], 0, 0),
  ([8], 0, 0),
  ([9], 0, 0),
  ([10], 0, 0),
  ([11], 0, 0),
  ([12], 0, 0),
  ([13], 0, 0),
  ([14], 0, 0),
)

#figure(
  canvas({
    chart.barchart(
      mode: "clustered",
      label-key: 0,
      value-key: (1, 2),
      bar-width: 0.5,
      size: (15, auto),
      x-tick-step: 5,
      x-label: [Hours],
      y-label: [Week],
      time_spent
    )
  }),
  caption: "Time spent per week"
)