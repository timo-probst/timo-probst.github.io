---
show: true
width: 6
date: 2026-04-13 00:01:00 +0800
group: Exploration
---


<div class="card-body">
  <h5>Inviscid SPH</h5>
  <hr />
  <p>
    SPH fluids, especially implicit pressure solvers with small kernel support, suffer from high artificial viscosity. 
    This is quite unfortunate, since they are otherwise robust, performant and intuitive to use for simulating free-surface flows.
    I'm currently exploring some tweaks related to the SPH interpolation that result in a much less viscous fluid with a comparable number of neighbors!
  </p>
</div>
<video 
  autoplay muted loop playsinline preload="none" style="aspect-ratio: 960 / 374;" class="lazy w-100 rounded-xl-bottom" 
  data-src="{{ '/assets/videos/karman_street_sph_grid.mp4' | relative_url }}|video/mp4">
</video>