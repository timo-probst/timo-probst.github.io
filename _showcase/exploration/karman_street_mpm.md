---
show: true
width: 8
date: 2026-04-15 00:01:00 +0800
group: Exploration
---

<div class="card-body">
  <h5>MPM Fluids</h5>
  <hr />
  <p class="card-text">
    Coming from an SPH background, I implemented and tested an MPM fluid solver. 
    The solver uses a density-based incompressiblity contraint similar to <a href="https://doi.org/10.1109/TVCG.2019.2947437">Kugelstadt et al. (2021)</a> instead of solely relying on an estimated velocity divergence. 
    This way, the fluid does not compress over time. Through a particle sampling, complex geometries can be naturally incorporated into the simulation.
  </p>
</div>
<video 
  autoplay muted loop playsinline preload="none" style="aspect-ratio: 1700 / 286;" class="lazy w-100 rounded-xl-bottom" 
  data-src="{{ '/assets/videos/karman_street.mp4' | relative_url }}|video/mp4">
</video>