#import "@preview/cetz:0.1.2": canvas, chart

= Time Tracking
Content: expected effort & actual effort

// (Label, Time Spent Lukas, Time Spent Jann)
#let time_spent = (
  ([1], 17.75, 0),
  ([2], 16.5, 0),
  ([3], 18.5, 0),
  ([4], 12.5, 0),
  ([5], 17.5, 0),
  ([6], 16, 0),
  ([7], 16, 0),
  ([8], 16.75, 0),
  ([9], 17.25, 0),
  ([10], 17.75, 0),
  ([11], 21.75, 0),
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