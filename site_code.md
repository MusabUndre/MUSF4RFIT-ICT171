## MUSFITS Website Files Overview

### index.html (Main Page)
  Handles structure of the homepage.

<details>
<summary>View code for index.html, main.css, and main.js</summary>
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


### main.css (Primary Stylesheet)
	Defines page layout, colors, and typography.  
<details>
<summary>View code for main.css</summary>
	@import url(fontawesome-all.min.css);
	@import url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300italic,600italic,300,600");

/*
	Dimension Template by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

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
	vertical-align: baseline;}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	-webkit-text-size-adjust: none;
}

mark {
	background-color: transparent;
	color: inherit;
}

input::-moz-focus-inner {
	border: 0;
	padding: 0;
}

input, select, textarea {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
}

/* Basic */

	@-ms-viewport {
		width: device-width;
	}

	@media screen and (max-width: 480px) {

		html, body {
			min-width: 320px;
		}

	}

	html {
		box-sizing: border-box;
	}

	*, *:before, *:after {
		box-sizing: inherit;
	}

	body {
		background: #1b1f22;
	}

		body.is-preload *, body.is-preload *:before, body.is-preload *:after {
			-moz-animation: none !important;
			-webkit-animation: none !important;
			-ms-animation: none !important;
			animation: none !important;
			-moz-transition: none !important;
			-webkit-transition: none !important;
			-ms-transition: none !important;
			transition: none !important;
		}

/* Type */

	html {
		font-size: 16pt;
	}

		@media screen and (max-width: 1680px) {

			html {
				font-size: 12pt;
			}

		}

		@media screen and (max-width: 736px) {

			html {
				font-size: 11pt;
			}

		}

		@media screen and (max-width: 360px) {

			html {
				font-size: 10pt;
			}

		}

	body, input, select, textarea {
		color: #ffffff;
		font-family: "Source Sans Pro", sans-serif;
		font-weight: 300;
		font-size: 1rem;
		line-height: 1.65;
	}

	a {
		-moz-transition: color 0.2s ease-in-out, background-color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		-webkit-transition: color 0.2s ease-in-out, background-color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		-ms-transition: color 0.2s ease-in-out, background-color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
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

	em, i {
		font-style: italic;
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

		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
			color: inherit;
			text-decoration: none;
		}

		h1.major, h2.major, h3.major, h4.major, h5.major, h6.major {
			border-bottom: solid 1px #ffffff;
			width: -moz-max-content;
			width: -webkit-max-content;
			width: -ms-max-content;
			width: max-content;
			padding-bottom: 0.5rem;
			margin: 0 0 2rem 0;
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

	h3 {
		font-size: 1rem;
	}

	h4 {
		font-size: 0.8rem;
	}

	h5 {
		font-size: 0.7rem;
	}

	h6 {
		font-size: 0.6rem;
	}

	@media screen and (max-width: 736px) {

		h1 {
			font-size: 1.75rem;
			line-height: 1.4;
		}

		h2 {
			font-size: 1.25em;
			line-height: 1.5;
		}

	}

	sub {
		font-size: 0.8rem;
		position: relative;
		top: 0.5rem;
	}

	sup {
		font-size: 0.8rem;
		position: relative;
		top: -0.5rem;
	}

	blockquote {
		border-left: solid 4px #ffffff;
		font-style: italic;
		margin: 0 0 2rem 0;
		padding: 0.5rem 0 0.5rem 2rem;
	}

	code {
		background: rgba(255, 255, 255, 0.075);
		border-radius: 4px;
		font-family: "Courier New", monospace;
		font-size: 0.9rem;
		margin: 0 0.25rem;
		padding: 0.25rem 0.65rem;
	}

	pre {
		-webkit-overflow-scrolling: touch;
		font-family: "Courier New", monospace;
		font-size: 0.9rem;
		margin: 0 0 2rem 0;
	}

		pre code {
			display: block;
			line-height: 1.75;
			padding: 1rem 1.5rem;
			overflow-x: auto;
		}

	hr {
		border: 0;
		border-bottom: solid 1px #ffffff;
		margin: 2.75rem 0;
	}

	.align-left {
		text-align: left;
	}

	.align-center {
		text-align: center;
	}

	.align-right {
		text-align: right;
	}

/* Form */

	form {
		margin: 0 0 2rem 0;
	}

		form > :last-child {
			margin-bottom: 0;
		}

		form > .fields {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			-moz-flex-wrap: wrap;
			-webkit-flex-wrap: wrap;
			-ms-flex-wrap: wrap;
			flex-wrap: wrap;
			width: calc(100% + 3rem);
			margin: -1.5rem 0 2rem -1.5rem;
		}

			form > .fields > .field {
				-moz-flex-grow: 0;
				-webkit-flex-grow: 0;
				-ms-flex-grow: 0;
				flex-grow: 0;
				-moz-flex-shrink: 0;
				-webkit-flex-shrink: 0;
				-ms-flex-shrink: 0;
				flex-shrink: 0;
				padding: 1.5rem 0 0 1.5rem;
				width: calc(100% - 1.5rem);
			}

				form > .fields > .field.half {
					width: calc(50% - 0.75rem);
				}

				form > .fields > .field.third {
					width: calc(100%/3 - 0.5rem);
				}

				form > .fields > .field.quarter {
					width: calc(25% - 0.375rem);
				}

		@media screen and (max-width: 480px) {

			form > .fields {
				width: calc(100% + 3rem);
				margin: -1.5rem 0 2rem -1.5rem;
			}

				form > .fields > .field {
					padding: 1.5rem 0 0 1.5rem;
					width: calc(100% - 1.5rem);
				}

					form > .fields > .field.half {
						width: calc(100% - 1.5rem);
					}

					form > .fields > .field.third {
						width: calc(100% - 1.5rem);
					}

					form > .fields > .field.quarter {
						width: calc(100% - 1.5rem);
					}

		}

	label {
		color: #ffffff;
		display: block;
		font-size: 0.8rem;
		font-weight: 300;
		letter-spacing: 0.2rem;
		line-height: 1.5;
		margin: 0 0 1rem 0;
		text-transform: uppercase;
	}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	input[type="tel"],
	select,
	textarea {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
		-webkit-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
		-ms-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
		transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
		background-color: transparent;
		border-radius: 4px;
		border: solid 1px #ffffff;
		color: inherit;
		display: block;
		outline: 0;
		padding: 0 1rem;
		text-decoration: none;
		width: 100%;
	}

		input[type="text"]:invalid,
		input[type="password"]:invalid,
		input[type="email"]:invalid,
		input[type="tel"]:invalid,
		select:invalid,
		textarea:invalid {
			box-shadow: none;
		}

		input[type="text"]:focus,
		input[type="password"]:focus,
		input[type="email"]:focus,
		input[type="tel"]:focus,
		select:focus,
		textarea:focus {
			background: rgba(255, 255, 255, 0.075);
			border-color: #ffffff;
			box-shadow: 0 0 0 1px #ffffff;
		}

	select {
		background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' preserveAspectRatio='none' viewBox='0 0 40 40'%3E%3Cpath d='M9.4,12.3l10.4,10.4l10.4-10.4c0.2-0.2,0.5-0.4,0.9-0.4c0.3,0,0.6,0.1,0.9,0.4l3.3,3.3c0.2,0.2,0.4,0.5,0.4,0.9 c0,0.4-0.1,0.6-0.4,0.9L20.7,31.9c-0.2,0.2-0.5,0.4-0.9,0.4c-0.3,0-0.6-0.1-0.9-0.4L4.3,17.3c-0.2-0.2-0.4-0.5-0.4-0.9 c0-0.4,0.1-0.6,0.4-0.9l3.3-3.3c0.2-0.2,0.5-0.4,0.9-0.4S9.1,12.1,9.4,12.3z' fill='%23ffffff' /%3E%3C/svg%3E");
		background-size: 1.25rem;
		background-repeat: no-repeat;
		background-position: calc(100% - 1rem) center;
		height: 2.75rem;
		padding-right: 2.75rem;
		text-overflow: ellipsis;
	}

		select option {
			color: #ffffff;
			background: #1b1f22;
		}

		select:focus::-ms-value {
			background-color: transparent;
		}

		select::-ms-expand {
			display: none;
		}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	select {
		height: 2.75rem;
	}

	textarea {
		padding: 0.75rem 1rem;
	}

	input[type="checkbox"],
	input[type="radio"] {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		display: block;
		float: left;
		margin-right: -2rem;
		opacity: 0;
		width: 1rem;
		z-index: -1;
	}

		input[type="checkbox"] + label,
		input[type="radio"] + label {
			text-decoration: none;
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
			user-select: none;
			color: #ffffff;
			cursor: pointer;
			display: inline-block;
			font-size: 0.8rem;
			font-weight: 300;
			margin: 0 0 0.5rem 0;
			padding-left: 2.65rem;
			padding-right: 0.75rem;
			position: relative;
		}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				-moz-osx-font-smoothing: grayscale;
				-webkit-font-smoothing: antialiased;
				display: inline-block;
				font-style: normal;
				font-variant: normal;
				text-rendering: auto;
				line-height: 1;
				text-transform: none !important;
				font-family: 'Font Awesome 5 Free';
				font-weight: 900;
			}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				-moz-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
				-webkit-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
				-ms-transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
				transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
				border-radius: 4px;
				border: solid 1px #ffffff;
				content: '';
				display: inline-block;
				height: 1.65rem;
				left: 0;
				line-height: 1.65rem;
				position: absolute;
				text-align: center;
				top: -0.15rem;
				width: 1.65rem;
			}

		input[type="checkbox"]:checked + label:before,
		input[type="radio"]:checked + label:before {
			background: #ffffff !important;
			border-color: #ffffff !important;
			color: #1b1f22;
			content: '\f00c';
		}

		input[type="checkbox"]:focus + label:before,
		input[type="radio"]:focus + label:before {
			background: rgba(255, 255, 255, 0.075);
			border-color: #ffffff;
			box-shadow: 0 0 0 1px #ffffff;
		}

	input[type="checkbox"] + label:before {
		border-radius: 4px;
	}

	input[type="radio"] + label:before {
		border-radius: 100%;
	}

	::-webkit-input-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
		opacity: 1.0;
	}

	:-moz-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
		opacity: 1.0;
	}

	::-moz-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
		opacity: 1.0;
	}

	:-ms-input-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
		opacity: 1.0;
	}

	.formerize-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
		opacity: 1.0;
	}

/* Box */

	.box {
		border-radius: 4px;
		border: solid 1px #ffffff;
		margin-bottom: 2rem;
		padding: 1.5em;
	}

		.box > :last-child,
		.box > :last-child > :last-child,
		.box > :last-child > :last-child > :last-child {
			margin-bottom: 0;
		}

		.box.alt {
			border: 0;
			border-radius: 0;
			padding: 0;
		}

/* Icon */

	.icon {
		text-decoration: none;
		border-bottom: none;
		position: relative;
	}

		.icon:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			display: inline-block;
			font-style: normal;
			font-variant: normal;
			text-rendering: auto;
			line-height: 1;
			text-transform: none !important;
			font-family: 'Font Awesome 5 Free';
			font-weight: 400;
		}

		.icon > .label {
			display: none;
		}

		.icon:before {
			line-height: inherit;
		}

		.icon.solid:before {
			font-weight: 900;
		}

		.icon.brands:before {
			font-family: 'Font Awesome 5 Brands';
		}

/* Image */

	.image {
		border-radius: 4px;
		border: 0;
		display: inline-block;
		position: relative;
	}

		.image:before {
			pointer-events: none;
			background-image: url("../../images/overlay.png");
			background-color: rgba(19, 21, 25, 0.5);
			border-radius: 4px;
			content: '';
			display: block;
			height: 100%;
			left: 0;
			opacity: 0.5;
			position: absolute;
			top: 0;
			width: 100%;
		}

		.image img {
			border-radius: 4px;
			display: block;
		}

		.image.left, .image.right {
			max-width: 40%;
		}

			.image.left img, .image.right img {
				width: 100%;
			}

		.image.left {
			float: left;
			padding: 0 1.5em 1em 0;
			top: 0.25em;
		}

		.image.right {
			float: right;
			padding: 0 0 1em 1.5em;
			top: 0.25em;
		}

		.image.fit {
			display: block;
			margin: 0 0 2rem 0;
			width: 100%;
		}

			.image.fit img {
				width: 100%;
			}

		.image.main {
			display: block;
			margin: 2.5rem 0;
			width: 100%;
		}

			.image.main img {
				width: 100%;
			}

		@media screen and (max-width: 736px) {

			.image.main {
				margin: 2rem 0;
			}

		}

		@media screen and (max-width: 480px) {

			.image.main {
				margin: 1.5rem 0;
			}

		}

/* List */

	ol {
		list-style: decimal;
		margin: 0 0 2rem 0;
		padding-left: 1.25em;
	}

		ol li {
			padding-left: 0.25em;
		}

	ul {
		list-style: disc;
		margin: 0 0 2rem 0;
		padding-left: 1em;
	}

		ul li {
			padding-left: 0.5em;
		}

		ul.alt {
			list-style: none;
			padding-left: 0;
		}

			ul.alt li {
				border-top: solid 1px #ffffff;
				padding: 0.5em 0;
			}

				ul.alt li:first-child {
					border-top: 0;
					padding-top: 0;
				}

	dl {
		margin: 0 0 2rem 0;
	}

		dl dt {
			display: block;
			font-weight: 600;
			margin: 0 0 1rem 0;
		}

		dl dd {
			margin-left: 2rem;
		}

/* Actions */

	ul.actions {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		cursor: default;
		list-style: none;
		margin-left: -1rem;
		padding-left: 0;
	}

		ul.actions li {
			padding: 0 0 0 1rem;
			vertical-align: middle;
		}

		ul.actions.special {
			-moz-justify-content: center;
			-webkit-justify-content: center;
			-ms-justify-content: center;
			justify-content: center;
			width: 100%;
			margin-left: 0;
		}

			ul.actions.special li:first-child {
				padding-left: 0;
			}

		ul.actions.stacked {
			-moz-flex-direction: column;
			-webkit-flex-direction: column;
			-ms-flex-direction: column;
			flex-direction: column;
			margin-left: 0;
		}

			ul.actions.stacked li {
				padding: 1.3rem 0 0 0;
			}

				ul.actions.stacked li:first-child {
					padding-top: 0;
				}

		ul.actions.fit {
			width: calc(100% + 1rem);
		}

			ul.actions.fit li {
				-moz-flex-grow: 1;
				-webkit-flex-grow: 1;
				-ms-flex-grow: 1;
				flex-grow: 1;
				-moz-flex-shrink: 1;
				-webkit-flex-shrink: 1;
				-ms-flex-shrink: 1;
				flex-shrink: 1;
				width: 100%;
			}

				ul.actions.fit li > * {
					width: 100%;
				}

			ul.actions.fit.stacked {
				width: 100%;
			}

		@media screen and (max-width: 480px) {

			ul.actions:not(.fixed) {
				-moz-flex-direction: column;
				-webkit-flex-direction: column;
				-ms-flex-direction: column;
				flex-direction: column;
				margin-left: 0;
				width: 100% !important;
			}

				ul.actions:not(.fixed) li {
					-moz-flex-grow: 1;
					-webkit-flex-grow: 1;
					-ms-flex-grow: 1;
					flex-grow: 1;
					-moz-flex-shrink: 1;
					-webkit-flex-shrink: 1;
					-ms-flex-shrink: 1;
					flex-shrink: 1;
					padding: 1rem 0 0 0;
					text-align: center;
					width: 100%;
				}

					ul.actions:not(.fixed) li > * {
						width: 100%;
					}

					ul.actions:not(.fixed) li:first-child {
						padding-top: 0;
					}

					ul.actions:not(.fixed) li input[type="submit"],
					ul.actions:not(.fixed) li input[type="reset"],
					ul.actions:not(.fixed) li input[type="button"],
					ul.actions:not(.fixed) li button,
					ul.actions:not(.fixed) li .button {
						width: 100%;
					}

						ul.actions:not(.fixed) li input[type="submit"].icon:before,
						ul.actions:not(.fixed) li input[type="reset"].icon:before,
						ul.actions:not(.fixed) li input[type="button"].icon:before,
						ul.actions:not(.fixed) li button.icon:before,
						ul.actions:not(.fixed) li .button.icon:before {
							margin-left: -0.5em;
						}

		}

/* Icons */

	ul.icons {
		cursor: default;
		list-style: none;
		padding-left: 0;
	}

		ul.icons li {
			display: inline-block;
			padding: 0 0.75em 0 0;
		}

			ul.icons li:last-child {
				padding-right: 0;
			}

			ul.icons li a {
				border-radius: 100%;
				box-shadow: inset 0 0 0 1px #ffffff;
				display: inline-block;
				height: 2.25rem;
				line-height: 2.25rem;
				text-align: center;
				width: 2.25rem;
			}

				ul.icons li a:hover {
					background-color: rgba(255, 255, 255, 0.075);
				}

				ul.icons li a:active {
					background-color: rgba(255, 255, 255, 0.175);
				}

/* Table */

	.table-wrapper {
		-webkit-overflow-scrolling: touch;
		overflow-x: auto;
	}

	table {
		margin: 0 0 2rem 0;
		width: 100%;
	}

		table tbody tr {
			border: solid 1px #ffffff;
			border-left: 0;
			border-right: 0;
		}

			table tbody tr:nth-child(2n + 1) {
				background-color: rgba(255, 255, 255, 0.075);
			}

		table td {
			padding: 0.75em 0.75em;
		}

		table th {
			color: #ffffff;
			font-size: 0.9em;
			font-weight: 600;
			padding: 0 0.75em 0.75em 0.75em;
			text-align: left;
		}

		table thead {
			border-bottom: solid 2px #ffffff;
		}

		table tfoot {
			border-top: solid 2px #ffffff;
		}

		table.alt {
			border-collapse: separate;
		}

			table.alt tbody tr td {
				border: solid 1px #ffffff;
				border-left-width: 0;
				border-top-width: 0;
			}

				table.alt tbody tr td:first-child {
					border-left-width: 1px;
				}

			table.alt tbody tr:first-child td {
				border-top-width: 1px;
			}

			table.alt thead {
				border-bottom: 0;
			}

			table.alt tfoot {
				border-top: 0;
			}

/* Button */

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	button,
	.button {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		background-color: transparent;
		border-radius: 4px;
		border: 0;
		box-shadow: inset 0 0 0 1px #ffffff;
		color: #ffffff !important;
		cursor: pointer;
		display: inline-block;
		font-size: 0.8rem;
		font-weight: 300;
		height: 2.75rem;
		letter-spacing: 0.2rem;
		line-height: 2.75rem;
		outline: 0;
		padding: 0 1.25rem 0 1.35rem;
		text-align: center;
		text-decoration: none;
		text-transform: uppercase;
		white-space: nowrap;
	}

		input[type="submit"]:hover,
		input[type="reset"]:hover,
		input[type="button"]:hover,
		button:hover,
		.button:hover {
			background-color: rgba(255, 255, 255, 0.075);
		}

		input[type="submit"]:active,
		input[type="reset"]:active,
		input[type="button"]:active,
		button:active,
		.button:active {
			background-color: rgba(255, 255, 255, 0.175);
		}

		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		input[type="button"].icon:before,
		button.icon:before,
		.button.icon:before {
			margin-right: 0.5em;
		}

		input[type="submit"].fit,
		input[type="reset"].fit,
		input[type="button"].fit,
		button.fit,
		.button.fit {
			width: 100%;
		}

		input[type="submit"].small,
		input[type="reset"].small,
		input[type="button"].small,
		button.small,
		.button.small {
			font-size: 0.6rem;
			height: 2.0625rem;
			line-height: 2.0625rem;
		}

		input[type="submit"].primary,
		input[type="reset"].primary,
		input[type="button"].primary,
		button.primary,
		.button.primary {
			background-color: #ffffff;
			color: #1b1f22 !important;
			font-weight: 600;
		}

		input[type="submit"].disabled, input[type="submit"]:disabled,
		input[type="reset"].disabled,
		input[type="reset"]:disabled,
		input[type="button"].disabled,
		input[type="button"]:disabled,
		button.disabled,
		button:disabled,
		.button.disabled,
		.button:disabled {
			pointer-events: none;
			cursor: default;
			opacity: 0.25;
		}

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	button {
		line-height: calc(2.75rem - 2px);
	}

/* BG */

	#bg {
		-moz-transform: scale(1.0);
		-webkit-transform: scale(1.0);
		-ms-transform: scale(1.0);
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
			-moz-transition: background-color 2.5s ease-in-out;
			-webkit-transition: background-color 2.5s ease-in-out;
			-ms-transition: background-color 2.5s ease-in-out;
			transition: background-color 2.5s ease-in-out;
			-moz-transition-delay: 0.75s;
			-webkit-transition-delay: 0.75s;
			-ms-transition-delay: 0.75s;
			transition-delay: 0.75s;
			background-image: linear-gradient(to top, rgba(19, 21, 25, 0.5), rgba(19, 21, 25, 0.5)), url("../../images/overlay.png");
			background-size: auto,
 256px 256px;
			background-position: center,
 center;
			background-repeat: no-repeat,
 repeat;
			z-index: 2;
		}

		#bg:after {
			-moz-transform: scale(1.125);
			-webkit-transform: scale(1.125);
			-ms-transform: scale(1.125);
			transform: scale(1.125);
			-moz-transition: -moz-transform 0.325s ease-in-out, -moz-filter 0.325s ease-in-out;
			-webkit-transition: -webkit-transform 0.325s ease-in-out, -webkit-filter 0.325s ease-in-out;
			-ms-transition: -ms-transform 0.325s ease-in-out, -ms-filter 0.325s ease-in-out;
			transition: transform 0.325s ease-in-out, filter 0.325s ease-in-out;
			background-image: url("../../images/bg.png");
			background-position: center;
			background-size: cover;
			background-repeat: no-repeat;
			z-index: 1;
		}

		body.is-article-visible #bg:after {
			-moz-transform: scale(1.0825);
			-webkit-transform: scale(1.0825);
			-ms-transform: scale(1.0825);
			transform: scale(1.0825);
			-moz-filter: blur(0.2rem);
			-webkit-filter: blur(0.2rem);
			-ms-filter: blur(0.2rem);
			filter: blur(0.2rem);
		}

		body.is-preload #bg:before {
			background-color: #000000;
		}

/* Wrapper */

	#wrapper {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		-moz-justify-content: space-between;
		-webkit-justify-content: space-between;
		-ms-justify-content: space-between;
		justify-content: space-between;
		position: relative;
		min-height: 100vh;
		width: 100%;
		padding: 4rem 2rem;
		z-index: 3;
	}

		#wrapper:before {
			content: '';
			display: block;
		}

		@media screen and (max-width: 1680px) {

			#wrapper {
				padding: 3rem 2rem;
			}

		}

		@media screen and (max-width: 736px) {

			#wrapper {
				padding: 2rem 1rem;
			}

		}

		@media screen and (max-width: 480px) {

			#wrapper {
				padding: 1rem;
			}

		}

/* Header */

	#header {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		-moz-transition: -moz-transform 0.325s ease-in-out, -moz-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		-webkit-transition: -webkit-transform 0.325s ease-in-out, -webkit-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		-ms-transition: -ms-transform 0.325s ease-in-out, -ms-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		transition: transform 0.325s ease-in-out, filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		background-image: -moz-radial-gradient(rgba(0, 0, 0, 0.25) 25%, rgba(0, 0, 0, 0) 55%);
		background-image: -webkit-radial-gradient(rgba(0, 0, 0, 0.25) 25%, rgba(0, 0, 0, 0) 55%);
		background-image: -ms-radial-gradient(rgba(0, 0, 0, 0.25) 25%, rgba(0, 0, 0, 0) 55%);
		background-image: radial-gradient(rgba(0, 0, 0, 0.25) 25%, rgba(0, 0, 0, 0) 55%);
		max-width: 100%;
		text-align: center;
	}

		#header > * {
			-moz-transition: opacity 0.325s ease-in-out;
			-webkit-transition: opacity 0.325s ease-in-out;
			-ms-transition: opacity 0.325s ease-in-out;
			transition: opacity 0.325s ease-in-out;
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
		}

			#header .logo .icon:before {
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
				-moz-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
				-webkit-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
				-ms-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
				transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
				-moz-transition-delay: 0.25s;
				-webkit-transition-delay: 0.25s;
				-ms-transition-delay: 0.25s;
				transition-delay: 0.25s;
				padding: 3rem 2rem;
				max-height: 40rem;
				overflow: hidden;
			}

				#header .content .inner > :last-child {
					margin-bottom: 0;
				}

			#header .content p {
				text-transform: uppercase;
				letter-spacing: 0.2rem;
				font-size: 0.8rem;
				line-height: 2;
			}

		#header nav ul {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
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

					#header nav ul li a:active {
						background-color: rgba(255, 255, 255, 0.175);
					}

		#header nav.use-middle:after {
			content: '';
			display: block;
			position: absolute;
			top: 0;
			left: calc(50% - 1px);
			width: 1px;
			height: 100%;
			background: #ffffff;
		}

		#header nav.use-middle ul li.is-middle {
			border-left: 0;
		}

		body.is-article-visible #header {
			-moz-transform: scale(0.95);
			-webkit-transform: scale(0.95);
			-ms-transform: scale(0.95);
			transform: scale(0.95);
			-moz-filter: blur(0.1rem);
			-webkit-filter: blur(0.1rem);
			-ms-filter: blur(0.1rem);
			filter: blur(0.1rem);
			opacity: 0;
		}

		body.is-preload #header {
			-moz-filter: blur(0.125rem);
			-webkit-filter: blur(0.125rem);
			-ms-filter: blur(0.125rem);
			filter: blur(0.125rem);
		}

			body.is-preload #header > * {
				opacity: 0;
			}

			body.is-preload #header .content .inner {
				max-height: 0;
				padding-top: 0;
				padding-bottom: 0;
				opacity: 0;
			}

		@media screen and (max-width: 980px) {

			#header .content p br {
				display: none;
			}

		}

		@media screen and (max-width: 736px) {

			#header > * {
				margin-top: 2rem;
			}

				#header > *:before {
					top: calc(-2rem - 1px);
					height: calc(2rem + 1px);
				}

			#header .logo {
				width: 4.75rem;
				height: 4.75rem;
				line-height: 4.75rem;
			}

				#header .logo .icon:before {
					font-size: 1.75rem;
				}

			#header .content .inner {
				padding: 2.5rem 1rem;
			}

			#header .content p {
				line-height: 1.875;
			}

		}

		@media screen and (max-width: 480px) {

			#header {
				padding: 1.5rem 0;
			}

				#header .content .inner {
					padding: 2.5rem 0;
				}

				#header nav ul {
					-moz-flex-direction: column;
					-webkit-flex-direction: column;
					-ms-flex-direction: column;
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

				#header nav.use-middle:after {
					display: none;
				}

		}

/* Main */

	#main {
		-moz-flex-grow: 1;
		-webkit-flex-grow: 1;
		-ms-flex-grow: 1;
		flex-grow: 1;
		-moz-flex-shrink: 1;
		-webkit-flex-shrink: 1;
		-ms-flex-shrink: 1;
		flex-shrink: 1;
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		-moz-justify-content: center;
		-webkit-justify-content: center;
		-ms-justify-content: center;
		justify-content: center;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		position: relative;
		max-width: 100%;
		z-index: 3;
	}

		#main article {
			-moz-transform: translateY(0.25rem);
			-webkit-transform: translateY(0.25rem);
			-ms-transform: translateY(0.25rem);
			transform: translateY(0.25rem);
			-moz-transition: opacity 0.325s ease-in-out, -moz-transform 0.325s ease-in-out;
			-webkit-transition: opacity 0.325s ease-in-out, -webkit-transform 0.325s ease-in-out;
			-ms-transition: opacity 0.325s ease-in-out, -ms-transform 0.325s ease-in-out;
			transition: opacity 0.325s ease-in-out, transform 0.325s ease-in-out;
			padding: 4.5rem 2.5rem 1.5rem 2.5rem ;
			position: relative;
			width: 40rem;
			max-width: 100%;
			background-color: rgba(27, 31, 34, 0.85);
			border-radius: 4px;
			opacity: 0;
		}

			#main article.active {
				-moz-transform: translateY(0);
				-webkit-transform: translateY(0);
				-ms-transform: translateY(0);
				transform: translateY(0);
				opacity: 1;
			}

			#main article .close {
				display: block;
				position: absolute;
				top: 0;
				right: 0;
				width: 4rem;
				height: 4rem;
				cursor: pointer;
				text-indent: 4rem;
				overflow: hidden;
				white-space: nowrap;
			}

				#main article .close:before {
					-moz-transition: background-color 0.2s ease-in-out;
					-webkit-transition: background-color 0.2s ease-in-out;
					-ms-transition: background-color 0.2s ease-in-out;
					transition: background-color 0.2s ease-in-out;
					content: '';
					display: block;
					position: absolute;
					top: 0.75rem;
					left: 0.75rem;
					width: 2.5rem;
					height: 2.5rem;
					border-radius: 100%;
					background-position: center;
					background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='20px' height='20px' viewBox='0 0 20 20' zoomAndPan='disable'%3E%3Cstyle%3Eline %7B stroke: %23ffffff%3B stroke-width: 1%3B %7D%3C/style%3E%3Cline x1='2' y1='2' x2='18' y2='18' /%3E%3Cline x1='18' y1='2' x2='2' y2='18' /%3E%3C/svg%3E");
					background-size: 20px 20px;
					background-repeat: no-repeat;
				}

				#main article .close:hover:before {
					background-color: rgba(255, 255, 255, 0.075);
				}

				#main article .close:active:before {
					background-color: rgba(255, 255, 255, 0.175);
				}

		@media screen and (max-width: 736px) {

			#main article {
				padding: 3.5rem 2rem 0.5rem 2rem ;
			}

				#main article .close:before {
					top: 0.875rem;
					left: 0.875rem;
					width: 2.25rem;
					height: 2.25rem;
					background-size: 14px 14px;
				}

		}

		@media screen and (max-width: 480px) {

			#main article {
				padding: 3rem 1.5rem 0.5rem 1.5rem ;
			}

		}

/* Footer */

	#footer {
		-moz-transition: -moz-transform 0.325s ease-in-out, -moz-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		-webkit-transition: -webkit-transform 0.325s ease-in-out, -webkit-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		-ms-transition: -ms-transform 0.325s ease-in-out, -ms-filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		transition: transform 0.325s ease-in-out, filter 0.325s ease-in-out, opacity 0.325s ease-in-out;
		width: 100%;
		max-width: 100%;
		margin-top: 2rem;
		text-align: center;
	}

		#footer .copyright {
			letter-spacing: 0.2rem;
			font-size: 0.6rem;
			opacity: 0.75;
			margin-bottom: 0;
			text-transform: uppercase;
		}

		body.is-article-visible #footer {
			-moz-transform: scale(0.95);
			-webkit-transform: scale(0.95);
			-ms-transform: scale(0.95);
			transform: scale(0.95);
			-moz-filter: blur(0.1rem);
			-webkit-filter: blur(0.1rem);
			-ms-filter: blur(0.1rem);
			filter: blur(0.1rem);
			opacity: 0;
		}

		body.is-preload #footer {
			opacity: 0;
		}
</details>

### main.js (Core Interactivity Script)
Controls workout selection and UI interaction.  
<details>
	<summary>View code for main.js</summary>
	/*
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var	$window = $(window),
		$body = $('body'),
		$wrapper = $('#wrapper'),
		$header = $('#header'),
		$footer = $('#footer'),
		$main = $('#main'),
		$main_articles = $main.children('article');

	// Breakpoints.
		breakpoints({
			xlarge:   [ '1281px',  '1680px' ],
			large:    [ '981px',   '1280px' ],
			medium:   [ '737px',   '980px'  ],
			small:    [ '481px',   '736px'  ],
			xsmall:   [ '361px',   '480px'  ],
			xxsmall:  [ null,      '360px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Fix: Flexbox min-height bug on IE.
		if (browser.name == 'ie') {

			var flexboxFixTimeoutId;

			$window.on('resize.flexbox-fix', function() {

				clearTimeout(flexboxFixTimeoutId);

				flexboxFixTimeoutId = setTimeout(function() {

					if ($wrapper.prop('scrollHeight') > $window.height())
						$wrapper.css('height', 'auto');
					else
						$wrapper.css('height', '100vh');

				}, 250);

			}).triggerHandler('resize.flexbox-fix');

		}

	// Nav.
		var $nav = $header.children('nav'),
			$nav_li = $nav.find('li');

		// Add "middle" alignment classes if we're dealing with an even number of items.
			if ($nav_li.length % 2 == 0) {

				$nav.addClass('use-middle');
				$nav_li.eq( ($nav_li.length / 2) ).addClass('is-middle');

			}

	// Main.
		var	delay = 325,
			locked = false;

		// Methods.
			$main._show = function(id, initial) {

				var $article = $main_articles.filter('#' + id);

				// No such article? Bail.
					if ($article.length == 0)
						return;

				// Handle lock.

					// Already locked? Speed through "show" steps w/o delays.
						if (locked || (typeof initial != 'undefined' && initial === true)) {

							// Mark as switching.
								$body.addClass('is-switching');

							// Mark as visible.
								$body.addClass('is-article-visible');

							// Deactivate all articles (just in case one's already active).
								$main_articles.removeClass('active');

							// Hide header, footer.
								$header.hide();
								$footer.hide();

							// Show main, article.
								$main.show();
								$article.show();

							// Activate article.
								$article.addClass('active');

							// Unlock.
								locked = false;

							// Unmark as switching.
								setTimeout(function() {
									$body.removeClass('is-switching');
								}, (initial ? 1000 : 0));

							return;

						}

					// Lock.
						locked = true;

				// Article already visible? Just swap articles.
					if ($body.hasClass('is-article-visible')) {

						// Deactivate current article.
							var $currentArticle = $main_articles.filter('.active');

							$currentArticle.removeClass('active');

						// Show article.
							setTimeout(function() {

								// Hide current article.
									$currentArticle.hide();

								// Show article.
									$article.show();

								// Activate article.
									setTimeout(function() {

										$article.addClass('active');

										// Window stuff.
											$window
												.scrollTop(0)
												.triggerHandler('resize.flexbox-fix');

										// Unlock.
											setTimeout(function() {
												locked = false;
											}, delay);

									}, 25);

							}, delay);

					}

				// Otherwise, handle as normal.
					else {

						// Mark as visible.
							$body
								.addClass('is-article-visible');

						// Show article.
							setTimeout(function() {

								// Hide header, footer.
									$header.hide();
									$footer.hide();

								// Show main, article.
									$main.show();
									$article.show();

								// Activate article.
									setTimeout(function() {

										$article.addClass('active');

										// Window stuff.
											$window
												.scrollTop(0)
												.triggerHandler('resize.flexbox-fix');

										// Unlock.
											setTimeout(function() {
												locked = false;
											}, delay);

									}, 25);

							}, delay);

					}

			};

			$main._hide = function(addState) {

				var $article = $main_articles.filter('.active');

				// Article not visible? Bail.
					if (!$body.hasClass('is-article-visible'))
						return;

				// Add state?
					if (typeof addState != 'undefined'
					&&	addState === true)
						history.pushState(null, null, '#');

				// Handle lock.

					// Already locked? Speed through "hide" steps w/o delays.
						if (locked) {

							// Mark as switching.
								$body.addClass('is-switching');

							// Deactivate article.
								$article.removeClass('active');

							// Hide article, main.
								$article.hide();
								$main.hide();

							// Show footer, header.
								$footer.show();
								$header.show();

							// Unmark as visible.
								$body.removeClass('is-article-visible');

							// Unlock.
								locked = false;

							// Unmark as switching.
								$body.removeClass('is-switching');

							// Window stuff.
								$window
									.scrollTop(0)
									.triggerHandler('resize.flexbox-fix');

							return;

						}

					// Lock.
						locked = true;

				// Deactivate article.
					$article.removeClass('active');

				// Hide article.
					setTimeout(function() {

						// Hide article, main.
							$article.hide();
							$main.hide();

						// Show footer, header.
							$footer.show();
							$header.show();

						// Unmark as visible.
							setTimeout(function() {

								$body.removeClass('is-article-visible');

								// Window stuff.
									$window
										.scrollTop(0)
										.triggerHandler('resize.flexbox-fix');

								// Unlock.
									setTimeout(function() {
										locked = false;
									}, delay);

							}, 25);

					}, delay);


			};

		// Articles.
			$main_articles.each(function() {

				var $this = $(this);

				// Close.
					$('<div class="close">Close</div>')
						.appendTo($this)
						.on('click', function() {
							location.hash = '';
						});

				// Prevent clicks from inside article from bubbling.
					$this.on('click', function(event) {
						event.stopPropagation();
					});

			});

		// Events.
			$body.on('click', function(event) {

				// Article visible? Hide.
					if ($body.hasClass('is-article-visible'))
						$main._hide(true);

			});

			$window.on('keyup', function(event) {

				switch (event.keyCode) {

					case 27:

						// Article visible? Hide.
							if ($body.hasClass('is-article-visible'))
								$main._hide(true);

						break;

					default:
						break;

				}

			});

			$window.on('hashchange', function(event) {

				// Empty hash?
					if (location.hash == ''
					||	location.hash == '#') {

						// Prevent default.
							event.preventDefault();
							event.stopPropagation();

						// Hide.
							$main._hide();

					}

				// Otherwise, check for a matching article.
					else if ($main_articles.filter(location.hash).length > 0) {

						// Prevent default.
							event.preventDefault();
							event.stopPropagation();

						// Show article.
							$main._show(location.hash.substr(1));

					}

			});

		// Scroll restoration.
		// This prevents the page from scrolling back to the top on a hashchange.
			if ('scrollRestoration' in history)
				history.scrollRestoration = 'manual';
			else {

				var	oldScrollPos = 0,
					scrollPos = 0,
					$htmlbody = $('html,body');

				$window
					.on('scroll', function() {

						oldScrollPos = scrollPos;
						scrollPos = $htmlbody.scrollTop();

					})
					.on('hashchange', function() {
						$window.scrollTop(oldScrollPos);
					});

			}

		// Initialize.

			// Hide main, articles.
				$main.hide();
				$main_articles.hide();

			// Initial article.
				if (location.hash != ''
				&&	location.hash != '#')
					$window.on('load', function() {
						$main._show(location.hash.substr(1), true);
					});

})(jQuery);
</details>
