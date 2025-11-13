## MUSFITS Website Files Overview

### index.html (Main Page)
  Handles structure of the homepage.

<details>
<summary>View full code</summary>
```html
<!DOCTYPE HTML>

<!--Dimension Template by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
!-->

<html>
<head>
    <title>MUSF4RFITS.</title>
    <link rel="icon" type="image/png" href="musab\/\var\www\html\images\sitetitle.jpg">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <style>
@import url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300italic,600italic,300,600");

html, body, div, span, applet, object,
iframe, h1, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;
}

body {
	line-height: 1;
	background: #1b1f22;
	color: #ffffff;
	font-family: "Source Sans Pro", sans-serif;
	font-weight: 300;
	font-size: 1rem;
	line-height: 1.65;
}

ol, ul {
	list-style: none;
}

html, body {
  margin: 0;
  padding: 0;
  overflow-x: hidden; /* 🚫 disables horizontal scroll */
  overflow-y: auto;   /* ✅ allows vertical scroll */
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;  /* ✅ keeps content horizontally centered */
  justify-content: flex-start; /* top alignment, can use center if you want vertical centering */
}

a {
	transition: color 0.2s ease-in-out, background-color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
	border-bottom: dotted 1px rgba(255, 255, 255, 0.5);
	text-decoration: none;
	color: inherit;
}

a:hover {
	border-bottom-color: transparent;
}

strong, b {
	color: #ffffff;
	font-weight: 600;
}

p {
	margin: 0 0 2rem 0;
}

h1, h2, h3, h4, h5, h6 {
	color: #ffffff;
	font-weight: 600;
	line-height: 1.5;
	margin: 0 0 1rem 0;
	text-transform: uppercase;
	letter-spacing: 0.2rem;
}

h1 {
	font-size: 2.25rem;
	line-height: 1.3;
	letter-spacing: 0.5rem;
}

h2 {
	font-size: 1.5rem;
	line-height: 1.4;
	letter-spacing: 0.5rem;
}

h2.major {
	border-bottom: solid 1px #ffffff;
	width: max-content;
	padding-bottom: 0.5rem;
	margin: 0 0 2rem 0;
}

h3 {
	font-size: 1rem;
}

h4 {
	font-size: 0.8rem;
}

hr {
	border: 0;
	border-bottom: solid 1px #ffffff;
	margin: 2.75rem 0;
}

#bg {
	transform: scale(1.0);
	-webkit-backface-visibility: hidden;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	z-index: 1;
}

#bg:before, #bg:after {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

#bg:before {
	background-image: linear-gradient(to top, rgba(19, 21, 25, 0.5), rgba(19, 21, 25, 0.5));
	background-size: auto, 256px 256px;
	background-position: center, center;
	background-repeat: no-repeat, repeat;
	z-index: 2;
}

#bg:after {
    transform: scale(1.125);
    background-image: url("images/sitebg.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    z-index: 1;
    opacity: 0;
    animation: fadeInBg 1s ease-in forwards;
}

@keyframes fadeInBg {
    to { opacity: 1; }
}


#wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    position: relative;
    min-height: 100vh;
    width: 100%;
    padding: 4rem 2rem;
    z-index: 3;
}

#main {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    width: 100%;
    max-width: 60rem;
    gap: 2rem;
}


#header {
	display: flex;
	flex-direction: column;
	align-items: center;
	max-width: 100%;
	text-align: center;
}

#header > * {
	position: relative;
	margin-top: 3.5rem;
}

#header > *:before {
	content: '';
	display: block;
	position: absolute;
	top: calc(-3.5rem - 1px);
	left: calc(50% - 1px);
	width: 1px;
	height: calc(3.5rem + 1px);
	background: #ffffff;
}

#header > :first-child {
	margin-top: 0;
}

#header > :first-child:before {
	display: none;
}

#header .logo {
	width: 5.5rem;
	height: 5.5rem;
	line-height: 5.5rem;
	border: solid 1px #ffffff;
	border-radius: 100%;
	font-size: 2rem;
}

#header .content {
	border-style: solid;
	border-color: #ffffff;
	border-top-width: 1px;
	border-bottom-width: 1px;
	max-width: 100%;
}

#header .content .inner {
	padding: 3rem 2rem;
	max-height: 40rem;
	overflow: hidden;
}

#header .content p {
	text-transform: uppercase;
	letter-spacing: 0.2rem;
	font-size: 0.8rem;
	line-height: 2;
}

#header nav ul {
	display: flex;
	margin-bottom: 0;
	list-style: none;
	padding-left: 0;
	border: solid 1px #ffffff;
	border-radius: 4px;
}

#header nav ul li {
	padding-left: 0;
	border-left: solid 1px #ffffff;
}

#header nav ul li:first-child {
	border-left: 0;
}

#header nav ul li a {
	display: block;
	min-width: 7.5rem;
	height: 2.75rem;
	line-height: 2.75rem;
	padding: 0 1.25rem 0 1.45rem;
	text-transform: uppercase;
	letter-spacing: 0.2rem;
	font-size: 0.8rem;
	border-bottom: 0;
}

#header nav ul li a:hover {
	background-color: rgba(255, 255, 255, 0.075);
}

#main {
	flex-grow: 1;
	flex-shrink: 1;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	position: relative;
	max-width: 100%;
	z-index: 3;
}

#main article {
	padding: 4.5rem 2.5rem 1.5rem 2.5rem;
	position: relative;
	width: 40rem;
	max-width: 100%;
	background-color: rgba(27, 31, 34, 0.85);
	border-radius: 4px;
	display: none;
}

#main article.active {
	display: block;
}

#main article .close {
	display: block;
	position: absolute;
	top: 0.75rem;
	right: 0.75rem;
	width: 2.5rem;
	height: 2.5rem;
	cursor: pointer;
	background: rgba(255, 255, 255, 0.1);
	border-radius: 100%;
	text-align: center;
	line-height: 2.5rem;
}

#main article .close:hover {
	background: rgba(255, 255, 255, 0.2);
}

#footer {
	width: 100%;
	max-width: 100%;
	margin-top: 1rem;
	text-align: center;
}

#footer {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  background: #2d4852;
  text-align: center;
  padding: 0.8rem 0;
  z-index: 10;
  box-shadow: 0 -2px 10px rgba(0,0,0,0.4);
  color: #f191f6;
}

#footer .copyright {
	letter-spacing: 0.2rem;
	font-size: 0.6rem;
	opacity: 0.75;
	margin-bottom: 0;
	text-transform: uppercase;
}

ul.actions.stacked {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	list-style: none;
	padding: 0;
	margin: 0 auto;
	width: fit-content;
}

.workout-days {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
}

ul.actions.stacked li {
	padding: 0.65rem 0 0 0;
}

ul.actions.stacked li:first-child {
	padding-top: 0;
}

.button.primary {
	background-color: rgba(255, 255, 255, 0.1);
	border: solid 1px #ffffff;
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	font-size: 0.8rem;
	font-weight: 300;
	height: 2.75rem;
	letter-spacing: 0.2rem;
	line-height: 2.75rem;
	padding: 0 1.25rem;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	white-space: nowrap;
	border-radius: 4px;
	width: 100%;
	transition: background-color 0.2s ease-in-out;
}

.button.primary:hover {
	background-color: rgba(255, 255, 255, 0.175);
}

.muscle-group-container {
	display: flex;
	flex-wrap: wrap;
	gap: 8px;
	margin-bottom: 10px;
}

.muscle-button {
	background: rgba(255, 255, 255, 0.05);
	border: none;
	border-radius: 8px;
	padding: 8px 14px;
	font-size: 0.8rem;
	font-weight: 600;
	text-transform: uppercase;
	color: #fff;
	cursor: pointer;
	font-family: inherit;
	transition: 0.18s ease;
}

.muscle-button:hover {
	background: rgba(255, 255, 255, 0.12);
	transform: translateY(-2px);
	box-shadow: 0 0 10px rgba(255, 255, 255, 0.25);
}

.exercise-list {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
	margin-top: 10px;
}

.exercise-option {
	display: inline-flex;
	align-items: center;
	background: rgba(255, 255, 255, 0.04);
	border-radius: 8px;
	padding: 8px 12px;
	cursor: pointer;
	transition: 0.18s;
	user-select: none;
	font-weight: 500;
	border: 1px solid transparent;
}

.exercise-option:hover {
	background: rgba(255, 255, 255, 0.10);
	transform: translateY(-2px);
}

.exercise-option input {
	display: none;
}

.exercise-option span {
	pointer-events: none;
}

.exercise-option.selected {
	background: rgba(255, 255, 255, 0.22);
	box-shadow: 0 0 8px rgba(255, 255, 255, 0.28);
	color: #fff;
	transform: translateY(-2px);
	border-color: rgba(255, 255, 255, 0.4);
}

.plan-group {
	margin-bottom: 8px;
}

@media screen and (max-width: 480px) {
	#header nav ul {
		flex-direction: column;
		min-width: 10rem;
		max-width: 100%;
	}

	#header nav ul li {
		border-left: 0;
		border-top: solid 1px #ffffff;
	}

	#header nav ul li:first-child {
		border-top: 0;
	}

	#header nav ul li a {
		height: 3rem;
		line-height: 3rem;
		min-width: 0;
		width: 100%;
	}
}

#main article {
  background: rgba(0, 0, 0, 0);
  border-radius: 12px;
  padding: 2rem;
  backdrop-filter: blur(6px);
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
}

#main {
  margin-top: 10px;
}

.plan-container {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  width: 100%;
}

.day-plan {
  background: rgba(255, 255, 255, 0.08);
  border-radius: 8px;
  padding: 1rem 1.5rem;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  transition: transform 0.2s ease;
}

.day-plan:hover {
  transform: translateY(-3px);
}

.day-plan h3 {
  margin-bottom: 0.5rem;
  border-bottom: solid 1px rgba(255,255,255,0.3);
  padding-bottom: 0.3rem;
}

.plan-group {
  margin-top: 0.8rem;
  padding-left: 1rem;
}

.plan-group h4 {
  font-size: 0.9rem;
  opacity: 0.9;
  margin-bottom: 0.3rem;
}

.plan-group ul {
  margin-left: 1rem;
  opacity: 0.85;
}

.plan-actions {
  margin-top: 2rem;
  text-align: center;
}
    </style>
</head>
<body>

<div id="bg"></div>

<div id="wrapper">
    <header id="header">
        <div class="logo">
        </div>
        <div class="content">
            <div class="inner">
                <h1>MusF4rFits.</h1>
                <p>F4r better, f4r good.</p>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="#about" onclick="showArticle('about'); return false;">About this site.</a></li>
                <li><a href="#workouts" onclick="showArticle('workouts'); return false;">Workout Selection.</a></li>
                <li><a href="#plan" onclick="showFullWeekView(); return false;">Your Plan.</a></li>
            </ul>
        </nav>
    </header>

    <div id="main">
        <article id="about">
            <span class="close" onclick="closeArticle()">×</span>
            <h2 class="major">About this site</h2>
            <p>A minimalistic, yet effective experience to develop a plan for a workout <i>you</i> want to follow.<br><br>
                Select your exercises;<br>
                Plan your workout;<br>
                Follow through.<br>
            </p>
        </article>

        <article id="workouts">
            <span class="close" onclick="closeArticle()">×</span>
            <h2 class="major">Workout Selection</h2>
            <p>Select a day to plan for:</p>
            <div class="workout-days">
                <ul class="actions stacked">
                    <li><a href="#" class="button primary" onclick="showPlan('Monday'); return false;">Monday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Tuesday'); return false;">Tuesday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Wednesday'); return false;">Wednesday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Thursday'); return false;">Thursday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Friday'); return false;">Friday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Saturday'); return false;">Saturday</a></li>
                    <li><a href="#" class="button primary" onclick="showPlan('Sunday'); return false;">Sunday</a></li>
                </ul>
            </div>
        </article>

        <article id="plan">
            <span class="close" onclick="closeArticle()">×</span>
            <h2 class="major">Your Plan</h2>
            <div id="muscle-buttons"></div>
            <div id="weekly-plan">
                <p>Loading your plan...</p>
            </div>
        </article>
    </div>

    <footer id="footer">
        <p class="copyright">&copy; MUSF4RFITS. Template by : <a href="https://html5up.net">HTML5 UP</a>.</p>
    </footer>
</div>

<script>
const exercises = {
  abs: ["Hanging Leg Raises","Cable Crunches","Ab Wheel Rollouts","Plank Variations","Weighted Sit-ups","Bicycle Crunches","Reverse Crunches","Russian Twists","Jack Knife","Flutter Kicks"],
  legs: ["Barbell Squats","Romanian Deadlifts","Leg Press","Bulgarian Split Squats","Walking Lunges","Hip Thrusts","Calf Raises","Leg Extensions","Hamstring Curls","Front Squats"],
  chest: ["Bench Press","Dumbbell Flyes","Incline Bench Press","Push-ups","Chest Dips","Cable Crossovers","Machine Press","Cable Press","Svend Press","Pec Deck Fly"],
  shoulders: ["Overhead Press","Lateral Raises","Front Raises","Arnold Press","Rear Delt Fly","Face Pulls","Dumbbell Shrugs","Cable Lateral Raise","Machine Shoulder Press","Upright Rows"],
  arms: {
    biceps: ["Bicep Curl Variations","Incline Dumbbell Curls","Hammer Curls","Concentration Curls","Preacher Curls"],
    triceps: ["Close-Grip Bench Press","Skull Crushers","Triceps Dips","Overhead Triceps Extension","Cable Pushdowns"],
    forearms: ["Wrist Curls","Reverse Curls","Farmer's Carries"]
  },
  back: ["Deadlifts","Pull-ups","Barbell Rows","Lat Pulldowns","T-Bar Rows","Single Arm Dumbbell Rows","Seated Cable Rows","Plate Shrugs","Dumbbell Shrugs","Face Pulls"]
};

let weeklyPlan = {};
let currentDay = null;

async function loadPlan() {
  try {
    const result = await window.storage.get('weeklyPlan');
    if (result && result.value) {
      weeklyPlan = JSON.parse(result.value);
    }
  } catch (error) {
    console.log('No saved plan found, starting fresh');
    weeklyPlan = {};
  }
}

async function savePlan() {
  try {
    await window.storage.set('weeklyPlan', JSON.stringify(weeklyPlan));
  } catch (error) {
    console.error('Error saving plan:', error);
  }
}

function showArticle(id) {
  document.querySelectorAll('#main article').forEach(a => a.classList.remove('active'));
  document.getElementById(id).classList.add('active');
}

function closeArticle() {
  document.querySelectorAll('#main article').forEach(a => a.classList.remove('active'));
}

async function showFullWeekView() {
  showArticle('plan');
  const muscleButtons = document.getElementById("muscle-buttons");
  const weeklyPlanContainer = document.getElementById("weekly-plan");
  
  muscleButtons.innerHTML = "";
  
  await showFullWeek();
}

async function showPlan(day) {
  currentDay = day;
  showArticle('plan');
  
  const muscleButtons = document.getElementById("muscle-buttons");
  const weeklyPlanContainer = document.getElementById("weekly-plan");

  weeklyPlanContainer.innerHTML = "";

  let html = `<h3>${day}</h3><p>Select one or more muscle groups:</p>`;
  const muscleGroups = ["abs","legs","chest","shoulders","back","arms.biceps","arms.triceps","arms.forearms","rest"];
  html += `<div class="muscle-group-container">`;
  muscleGroups.forEach(m => {
    const label = m.replace("arms.", "").toUpperCase();
    html += `<button type="button" class="muscle-button" data-day="${day}" data-group="${m}">${label}</button>`;
  });
  html += `</div>`;
  muscleButtons.innerHTML = html;

  document.querySelectorAll('.muscle-button[data-group]').forEach(btn => {
    btn.addEventListener('click', function() {
      const day = this.getAttribute('data-day');
      const group = this.getAttribute('data-group');
      selectMuscleGroup(day, group);
    });
  });
}

function selectMuscleGroup(day, group) {
  const muscleButtons = document.getElementById("muscle-buttons");

  if (group === "rest") {
    weeklyPlan[day] = [{group:"Rest", exercises:["Rest day."]}];
    savePlan();
    showPlan(day);
    return;
  }

  let target = exercises;
  group.split('.').forEach(p => target = target[p]);
  if (!target) return alert("Error loading exercises for " + group);

  let savedExercises = [];
  if (weeklyPlan[day]) {
    weeklyPlan[day].forEach(g => { 
      if (g.group === group) savedExercises = g.exercises; 
    });
  }

  let list = `<h4>Select exercises for ${group.replace("arms.","").toUpperCase()}:</h4>
              <div id="exerciseForm" class="exercise-list">`;
  target.forEach((ex, idx) => {
    const id = `chk_${group.replace(/\./g,'_')}_${idx}`;
    const checked = savedExercises.includes(ex);
    list += `<label class="exercise-option ${checked ? 'selected' : ''}" data-exercise="${ex}">
                <input type="checkbox" id="${id}" name="exercise" value="${ex}" ${checked ? 'checked' : ''}>
                <span>${ex}</span>
             </label>`;
  });
  list += `</div><div style="margin-top:15px; width:100%; display: flex; gap: 10px;">
              <button type="button" class="muscle-button" id="saveBtn" data-day="${day}" data-group="${group}">Save</button>
              <button type="button" class="muscle-button" id="cancelBtn" data-day="${day}">Cancel</button>
           </div>`;
  muscleButtons.innerHTML = list;

  document.querySelectorAll(".exercise-option").forEach(label => {
    const input = label.querySelector("input");
    
    label.addEventListener("click", function(e) {
      e.preventDefault();
      e.stopPropagation();
      
      input.checked = !input.checked;
      this.classList.toggle("selected", input.checked);
    });
  });

  document.getElementById('saveBtn').addEventListener('click', function() {
    const day = this.getAttribute('data-day');
    const group = this.getAttribute('data-group');
    saveExercises(day, group);
  });

  document.getElementById('cancelBtn').addEventListener('click', function() {
    const day = this.getAttribute('data-day');
    showPlan(day);
  });
}

async function saveExercises(day, group) {
  const form = document.getElementById("exerciseForm");
  if(!form) return alert("No exercises to save.");
  
  const selected = Array.from(form.querySelectorAll('input[name="exercise"]:checked')).map(e => e.value);
  if(!selected.length) return alert("Select at least one exercise.");

  if(!weeklyPlan[day]) weeklyPlan[day] = [];
  const index = weeklyPlan[day].findIndex(g => g.group === group);
  if(index > -1) {
    weeklyPlan[day][index].exercises = selected;
  } else {
    weeklyPlan[day].push({group, exercises: selected});
  }

  await savePlan();
  await showPlan(day);
}

async function removeExercise(day, i) {
  if(!weeklyPlan[day]) return;
  weeklyPlan[day].splice(i, 1);
  if(weeklyPlan[day].length === 0) delete weeklyPlan[day];
  await savePlan();
  await showPlan(day);
}

async function clearAll() {
  if(confirm("Clear your entire plan?")) {
    weeklyPlan = {};
    try {
      await window.storage.delete('weeklyPlan');
    } catch (error) {
      console.log('Error clearing plan');
    }
    await showFullWeekView();
  }
}

async function showFullWeek() {
  const weeklyPlanContainer = document.getElementById("weekly-plan");
  weeklyPlanContainer.innerHTML = "";

  if (Object.keys(weeklyPlan).length === 0) {
    weeklyPlanContainer.innerHTML = "<p>No workouts saved yet.</p>";
    return;
  }

  let html = `<div class="plan-container">`;

  for (const [day, groups] of Object.entries(weeklyPlan)) {
    html += `
      <div class="day-plan">
        <h3>${day}</h3>
        ${groups.map(plan => `
          <div class="plan-group">
            <h4>${plan.group.replace("arms.","").toUpperCase()}</h4>
            <ul>
              ${plan.exercises.map(e => `<li>${e}</li>`).join('')}
            </ul>
          </div>
        `).join('')}
      </div>
    `;
  }

  html += `</div>
    <div class="plan-actions">
      <button class="muscle-button" id="clearAllBtn">Clear All</button>
    </div>`;

  weeklyPlanContainer.innerHTML = html;

  const clearBtn = document.getElementById('clearAllBtn');
  if (clearBtn) clearBtn.addEventListener('click', clearAll);
}

loadPlan();

</script>

</body>
</html>


</details>
