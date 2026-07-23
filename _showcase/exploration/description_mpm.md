---
show: true
width: 4
date: 2026-04-19 00:01:00 +0800
group: Exploration
---


<div class="p-4">
  <h5>MPM Fluids</h5>
  <hr />
  <p>
    Coming from an SPH background, I implemented and tested an MPM fluid solver. 
    The solver uses a density-based incompressiblity contraint similar to <a href="https://doi.org/10.1109/TVCG.2019.2947437">Kugelstadt et al. (2021)</a> instead of solely relying on an estimated velocity divergence. 
    This way, the fluid does not compress over time.
  </p>
</div>