---
layout: page
title: Projects
subtitle: Various Design Projects Throughout College
permalink: /projects/
---

Welcome! Below are highlights of my most meaningful engineering and design projects. Use the filters to explore projects by focus area.

<style>
/* Filter buttons */
.filter-btns {
  text-align: center;
  margin-top: 1.5em;
  margin-bottom: 1em;
}
.filter-btn {
  display: inline-block;
  margin: 0.25em;
  padding: 0.5em 1em;
  font-size: 0.9em;
  background-color: #eee;
  border: none;
  border-radius: 20px;
  cursor: pointer;
  transition: background-color 0.3s;
}
.filter-btn:hover,
.filter-btn.active {
  background-color: #444;
  color: #fff;
}

/* Project grid */
.project-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 24px;
  margin-top: 2em;
}

/* Project card styles */
.project-card {
  display: block;
  text-decoration: none;
  color: inherit;
  border: 1px solid #ddd;
  border-radius: 12px;
  overflow: hidden;
  background-color: #fff;
  box-shadow: 2px 4px 8px rgba(0,0,0,0.05);
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}
.project-card:hover {
  transform: translateY(-4px);
  box-shadow: 4px 6px 14px rgba(0,0,0,0.1);
}
.project-card img {
  width: 100%;
  height: 160px;
  object-fit: cover;
  border-radius: 12px 12px 0 0;
}
.project-content {
  padding: 1em;
}
.project-title {
  font-size: 1.2em;
  font-weight: 600;
  margin-bottom: 0.4em;
}
.hidden {
  display: none;
}
</style>

<div class="filter-btns">
  <button class="filter-btn active" onclick="filterProjects('all')">🌐 All</button>
  <button class="filter-btn" onclick="filterProjects('proto')">🛠️ Functional Prototypes</button>
  <button class="filter-btn" onclick="filterProjects('mech')">🛠️ Mechanical Design</button>
  <button class="filter-btn" onclick="filterProjects('code')">💻 Mechatronics / Code</button>
</div>

<div class="project-grid">

<!-- Smart Nap Pod -->
<a href="{{ site.baseurl }}/projects/nap-pod" class="project-card code">
  <img src="{{ site.baseurl }}/assets/img/projects/nap_pod.png" alt="Smart Nap Pod">
  <div class="project-content">
    <div class="project-title">💤 Smart Nap Pod (Raspberry Pi)</div>
    <p>Smart sleeping pod with face detection, privacy controls, and 3D printed structure using Raspberry Pi and OpenCV.</p>
    <p><em>Smart Products • Spring 2025</em></p>
  </div>
</a>

<!-- MillerKnoll Capstone -->
<a href="{{ site.baseurl }}/projects/senior-capstone" class="project-card proto">
  <img src="{{ site.baseurl }}/assets/img/projects/millerknoll.jpg" alt="MillerKnoll Capstone">
  <div class="project-content">
    <div class="project-title">🪑 MillerKnoll Office Ergonomics Capstone</div>
    <p>Led an interdisciplinary team to prototype a new desk concept improving digital equity in the workplace.</p>
    <p><em>Senior Capstone • 2023–2024</em></p>
  </div>
</a>

<!-- EchoCup -->
<a href="{{ site.baseurl }}/projects/echocup" class="project-card proto">
  <img src="{{ site.baseurl }}/assets/img/projects/echocup.jpg" alt="EchoCup">
  <div class="project-content">
    <div class="project-title">🔊 EchoCup – Accessible Audio-Based Measuring Cup</div>
    <p>Award-winning device with audio feedback for the blind and visually impaired community using a fully mechanical design.</p>
    <p><em>Fundamental of Engineering II • Spring 2021</em></p>
  </div>
</a>

<!-- E-Bike -->
<a href="{{ site.baseurl }}/projects/e-bike" class="project-card mech">
  <img src="{{ site.baseurl }}/assets/img/projects/ebike.jpg" alt="E-Bike Drivetrain">
  <div class="project-content">
    <div class="project-title">⚡ E-Bike Drivetrain Design</div>
    <p>Converted a conventional bike to pedal-assist with 350W DC motor, 1:3 gear ratio, and SolidWorks drivetrain.</p>
    <p><em>Machine Elements II • Fall 2023</em></p>
  </div>
</a>

<!-- ORC Plant -->
<a href="{{ site.baseurl }}/projects/orc-plant" class="project-card mech">
  <img src="{{ site.baseurl }}/assets/img/projects/orc.jpg" alt="ORC Plant Model">
  <div class="project-content">
    <div class="project-title">🔥 ORC Power Plant Efficiency</div>
    <p>Optimized Organic Rankine Cycle power plant using thermodynamic calculations and MATLAB modeling.</p>
    <p><em>Thermodynamics I • Spring 2023</em></p>
  </div>
</a>

<!-- Drink Dispenser -->
<a href="{{ site.baseurl }}/projects/drink-dispenser" class="project-card code">
  <img src="{{ site.baseurl }}/assets/img/projects/drink_dispenser.jpg" alt="Drink Dispenser">
  <div class="project-content">
    <div class="project-title">🥤 Arduino Drink Dispenser</div>
    <p>Built an automatic dispenser using Arduino and DC motors with a focus on low-cost prototyping.</p>
    <p><em>Design I • Fall 2022</em></p>
  </div>
</a>

</div>

<script>
function filterProjects(category) {
  const allCards = document.querySelectorAll('.project-card');
  const buttons = document.querySelectorAll('.filter-btn');

  buttons.forEach(btn => btn.classList.remove('active'));
  document.querySelector(`.filter-btn[onclick="filterProjects('${category}')"]`).classList.add('active');

  allCards.forEach(card => {
    if (category === 'all' || card.classList.contains(category)) {
      card.classList.remove('hidden');
    } else {
      card.classList.add('hidden');
    }
  });
}
</script>
