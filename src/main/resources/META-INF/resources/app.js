const skillToColorMap = new Map([
  ['EN1', '#ffffff'],
  ['EN0', '#edd400'],
  ['ES', '#ef2929'],
  ['DE', '#e9b96e'],
  ['Car insurance', '#ad7fa8'],
  ['Property insurance', '#729fcf'],
  ['Life insurance', '#73d216']
]);

const pinnedJobColor = '#ebfadc';
const waitingJobColor = 'White';

var autoRefreshIntervalId = null;
var solving = false;

const fetchHeaders = {
  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  },
};

function refresh() {
	try{
  $.getJSON("/job-assign", (jobCenterData) => {
    solving = jobCenterData.solving;
    refreshSolvingButtons();
    $("#score").text("Score: " + (jobCenterData.score == null ? "?" : jobCenterData.score));
    printJobTable(jobCenterData);
  });
  } catch(e){
	alert(e);
}
}

function printJobTable(jobCenterData) {
  const jobTable = $('#jobTable');
  jobTable.children().remove();
  printHeader(jobTable, 10);
  const tableBody = $('<tbody/>').appendTo(jobTable);
  
  jobCenterData.techs.forEach((tech) => {
    printTech(tableBody, tech);
  });
}

function printHeader(jobTable, jobs) {
  const thead = $('<thead/>').appendTo(jobTable);
  const headerRow = $('<tr/>').appendTo(thead);
  headerRow.append($('<th style="width:10%;"><h2>Technicians</h2></th>'));
  headerRow.append($('<th colspan="' + jobs + '" style="text-align:center"><h2>Jobs</h2></th>'))
}

function printTech(tableBody, tech) {
  const tableRow = $(`<tr class="tech-row" />`).appendTo(tableBody);
  const td = $(`<td />`).appendTo(tableRow);
  const techCard = $('<div class="card" style="background-color:#f7ecd5">').appendTo(td);
  const techCardBody = $('<div class="card-body p-2" />')
    .append($(`<table border=0 cellpadding=0 cellspacing=0><tr><td><h6 class="card-title mb-2"><i class="fas fa-user-alt mr-1"></i><a  id="${tech.name}" href="javascript:void(0)">${tech.name}</a></h6></td><td><i class="fas fa-atlas"></i><a  id="${tech.name}1" href="javascript:void(0)">&nbsp;Route</a></td></tr></table>`))
	.append(`<hr>`);
  //printSkills(techCardBody, tech.skills);
  printTechInfo(techCardBody, tech);
  techCardBody.appendTo(techCard);

  var objName = "#" + `${tech.name}`;
  $(objName).on('click',function() { showDetails($(this), tech) });

  var objName1 = "#" + `${tech.name}1`;
  $(objName1).on('click',function() { setMapView($(this), tech) });

  const jobsTd = $('<td style="flex-flow:row; display: flex;"/>').appendTo(tableRow);

  tech.jobs.forEach((job) => {
    printJob(jobsTd, job);
  });
}

function printJob(jobsTd, job) {
	try {
  const jobColor = (job.pinned) ? pinnedJobColor : waitingJobColor;
  const jobCard = $(`<div class="card mr-1" style="float:left; width: 14rem; background-color: ${jobColor}"/>`);
  const jobButtons = $(`<div class="float-right"/>`);
  const jobCardBody = $('<div class="card-body p-2"/>')
    .append(jobButtons)
    .append((job.pinned) ? $(`<i class="fas fa-cogs mr-1 p-2"></i>`) : $(`<i class="fas fa-cogs mr-1 p-2"></i>`))
    .append($(`<h6 class="card-title mb-2"><a id="${job.jobId}" href="javascript:void(0)">${job.jobId}</a></h6>)`))
    .append(`<hr>`);
	
	printJobInfo(jobCardBody, job);
  	jobCard.append(jobCardBody);
  	jobCard.appendTo(jobsTd);

	var objName = "#" + `${job.jobId}`;
  	$(objName).on('click',function() { showDetails($(this), job) });


  }catch(e){
	alrt(e);	
  }
}


function showDetails(objPopup, skillsTools) {

	try{
		const stRow = $('<div class="menu" style="margin-top: 30px;" />');
		const stClose = $('<div class="close" onClick="try { $(this).parent().parent().hide(); } catch (e) { alert(e); }"><i class="fa fa-times"></i></div>').appendTo(stRow);
		const stTableRow = $('<table border=0 cellspacing=0 cellpadding=0><tbody><tr /></tbody></table>').appendTo(stRow);
		
		//############## Skills #####################
		const stSkillsTD = $('<td />').appendTo(stTableRow);
		const stSkillInnerTable = $('<table border=1 cellspacing=0 cellpadding=0 />').appendTo(stSkillsTD);
		const stSkillsHead = $('<thead><tr style="background-color:#ebfadc"  align=center><th>Skill</th><th>Skill Level</th></tr></thead>').appendTo(stSkillInnerTable);
		const stSkillsBody = $('<tbody />').appendTo(stSkillInnerTable);
		
		var iteratorSkills;
		iteratorSkills = ((skillsTools.requiredSkill != null) ? skillsTools.requiredSkill : skillsTools.skills);

		
		iteratorSkills.forEach((skill) => {
			var stRow = $(`<tr style="background-color:#ededed"><td>${skill.skill}</td><td>${skill.skillLevel}</td></tr>`);
			stRow.appendTo(stSkillsBody);
		});
		
		//############## Tools #####################
		const stToolsTD = $('<td />').appendTo(stTableRow);
		const stToolsInnerTable = $('<table border=1  cellspacing=0 cellpadding=0/>').appendTo(stToolsTD);
		const stToolsHead = $('<thead><tr  style="background-color:#ebfadc" align=center><th>Tool</th></tr></thead>').appendTo(stToolsInnerTable);
		const stToolsBody = $('<tbody />').appendTo(stToolsInnerTable);

		var iteratorTools;
		iteratorTools = ((skillsTools.requiredTools != null) ? skillsTools.requiredTools : skillsTools.tools);

		iteratorTools.forEach((tool) => {
			var stRow = $(`<tr style="background-color:#ededed"><td>${tool.tool}</td></tr>`);
			stRow.appendTo(stToolsBody);
		});


		var offset = objPopup.offset();
		$('.details').html(stRow);
	  	$('.details')
	    	.fadeIn()
	    	.css({
	      			left: offset.left, //Math.min(offset.left, $(window).innerWidth() - $('.details').outerWidth()),
	      			top: offset.top
	    		});
	}catch(e){
		alert(e);
	}
}

// #####################################################

function printTechInfo(container, tech){
  const techRow = $('<div/>');
  container.append(techRow);
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Type - ${tech.type}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Region - ${tech.region}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">District - ${tech.district}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Active -` + ((tech.active == '-1') ? "Yes" : "No") + `</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Lunch - ` + ((tech.reqLunchBreak == '-1') ? "Yes" : "No")  + `</span>`));
}

function printJobInfo(container, job){
  const techRow = $('<div/>');
  container.append(techRow);
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Status - ${job.status}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Region - ${job.region}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">District - ${job.district}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Start Date - ${job.earlyStartDate}</span>`));
  techRow.append($(`<span class="badge mr-1 mt-1" style="background-color:#ffffff">Due Date - ${job.dueDate}</span>`));	
}


function printTimes(jobCard, jobButtons, job) {
  const LocalTime = JSJoda.LocalTime;
  const Duration = JSJoda.Duration;

  const startedTime = LocalTime.parse(job.startTime);
  if (job.pinned) {
    const pickedUpTime = LocalTime.parse(job.pickUpTime);
    const waitingTillPickedUpTime = formatDuration(Duration.between(startedTime, pickedUpTime));
    const inProgressTime = formatDuration(Duration.between(LocalTime.parse(job.pickUpTime), LocalTime.now()));
    $(`<p class="card-text mb-1" style="font-size:0.8em">Waiting: ${waitingTillPickedUpTime}</p>`).appendTo(jobCard);
    $(`<p class="card-text mb-1" style="font-size:0.8em">In progress: ${inProgressTime}</p>`).appendTo(jobCard);

    jobButtons.append($(`<div class="mt-1"><button class="btn btn-sm btn-outline-primary py-0 px-1">+ 1m</button></div>`).click(() => prolongJob(job)));
  } else {
    const waiting = formatDuration(Duration.between(startedTime, LocalTime.now()));
    const estimatedWaiting = formatDuration(Duration.ofSeconds(Math.floor(job.estimatedWaiting)));
    $(`<p class="card-text mb-1" style="font-size:0.8em">Waiting: ${waiting}</p>`).appendTo(jobCard);
    $(`<p class="card-text mb-1" style="font-size:0.8em">Estimated waiting: ${estimatedWaiting}</p>`)
      .appendTo(jobCard);
  }
}

function formatDuration(duration) {
  const hours = Math.floor(duration.seconds() / 3600);
  const minutes = Math.floor((duration.seconds() % 3600) / 60);
  const seconds = duration.seconds() % 60;
  var formattedDuration = '';
  if (hours > 0) {
    formattedDuration += hours + 'h ';
  }
  formattedDuration += minutes + 'm ' + seconds + 's';
  return formattedDuration;
}

function printSkills(container, skills) {
  const skillRow = $('<div/>');
  container.append(skillRow);
  skills.forEach((skill) => {
    let color = skillToColorMap.get("EN");
    skillRow.append($(`<span class="badge mr-1 mt-1" style="background-color:${color}">${skill.skill}</span>`));
  });
}

function solve() {
  fetch('/job-assign/solve', { ...fetchHeaders, method: 'POST' })
    .then((response) => {
      if (!response.ok) {
        return handleErrorResponse('Start solving failed.', response);
      } else {
        solving = true;
        refreshSolvingButtons();
      }
    })
    .catch((error) => handleClientError('Failed to process response.', error));
}

function stopSolving() {
  fetch('/job-assign/stop', { ...fetchHeaders, method: 'POST' })
    .then((response) => {
      if (!response.ok) {
        return handleErrorResponse('Stop solving failed', response);
      } else {
        solving = false;
        refreshSolvingButtons();
        refresh();
      }
    })
    .catch((error) => handleClientError('Failed to process response.', error));
}

function getScoreExplanation(){
	fetch('/job-assign/status', { ...fetchHeaders, method: 'GET' })
		.then((response) =>  {
			if (!response.ok) {
        		return handleErrorResponse('Get status failed', response);
      		} else {
				return response.json().then((data) => showProblem(data));
			}
		});	
}

function showProblem(data){
	$('#scoreInfo').text(data.scoreExplanation);
	//alert($('#scoreInfo').text());
}

function refreshSolvingButtons() {
  if (solving) {
    $("#solveButton").hide();
    $("#stopSolvingButton").show();
    if (autoRefreshIntervalId == null) {
      autoRefreshIntervalId = setInterval(refresh, 1000);
    }
  } else {
    $("#solveButton").show();
    $("#stopSolvingButton").hide();
    if (autoRefreshIntervalId != null) {
      clearInterval(autoRefreshIntervalId);
      autoRefreshIntervalId = null;
    }
  }
}

function removeJob(job) {
  fetch("/job/" + job.id, { ...fetchHeaders, method: 'DELETE' })
    .then((response) => {
      if (!response.ok) {
        return handleErrorResponse('Cancelling a job (' + job.phoneNumber + ') failed.', response);
      } else {
        refresh();
      }
    })
    .catch((error) => handleClientError('Failed to process response.', error));
}

function prolongJob(job) {
  fetch("/job/" + job.id, { ...fetchHeaders, method: 'PUT' })
    .then((response) => {
      if (!response.ok) {
        return handleErrorResponse('Prolonging a job (' + job.phoneNumber + ') failed.', response);
      } else {
        refresh();
      }
    })
    .catch((error) => handleClientError('Failed to process response.', error));
}

function removeTech(tech) {
  fetch('/tech/' + tech.id, { ...fetchHeaders, method: 'DELETE' })
    .then((response) => {
      if (!response.ok) {
        return handleErrorResponse('Deleting an tech (' + tech.name + ') failed.', response);
      } else {
        refresh();
      }
    })
    .catch((error) => handleClientError('Failed to process response.', error));
}

function restartSimulation(frequency, duration) {
  fetch('/simulation', { 
    ...fetchHeaders, 
    method: 'PUT',
    body: JSON.stringify({
      'frequency': frequency,
      'duration': duration
    })
  })
  .then((response) => {
    if (!response.ok) {
      return handleErrorResponse('Updating simulation parameters (frequency:' + frequency + ', duration:' + duration + ') failed.', response);
    }
  })
  .catch((error) => handleClientError('Failed to process response.', error));
}

const formatErrorResponseBody = (body) => {
  // JSON must not contain \t (Quarkus bug)
  const json = JSON.parse(body.replace(/\t/g, '  '));
  return `${json.details}\n${json.stack}`;
};

const handleErrorResponse = (title, response) => {
  return response.text()
    .then((body) => {
      const message = `${title} (${response.status}: ${response.statusText}).`;
      const stackTrace = body ? formatErrorResponseBody(body) : '';
      showError(message, stackTrace);
    });
};

const handleClientError = (title, error) => {
  console.error(title + "\n" + error);
  showError(`${title}.`,
    // Stack looks differently in Chrome and Firefox.
    error.stack.startsWith(error.name)
      ? error.stack
      : `${error.name}: ${error.message}\n    ${error.stack.replace(/\n/g, '\n    ')}`);
};

function showError(message, stackTrace) {
  const notification = $(`<div class="toast" role="alert" aria-live="assertive" aria-atomic="true" style="min-width: 30rem"/>`)
    .append($(`<div class="toast-header bg-danger">
                 <strong class="mr-auto text-dark">Error</strong>
                 <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>`))
    .append($(`<div class="toast-body"/>`)
      .append($(`<p/>`).text(message))
      .append($(`<pre/>`)
        .append($(`<code/>`).text(stackTrace))
      )
    );
  $('#notificationPanel').append(notification);
  notification.toast({ delay: 30000 });
  notification.toast('show');
}

var map;
// ########################### Map Functions ##################################
function setMapView(objPopup, tech){
	try {
		var dir = MQ.routing.directions();
		var lati = (tech.lati/1000000);
		var longi = (tech.longi/1000000);

		var coord = [String(lati + "," + longi)];

	
		if(map != undefined || map != null) map = map.remove();

		map = L.map('map', {
			layers: MQ.mapLayer(),
			center: [lati, longi],
			zoom: 13
		  });

	    tech.jobs.forEach((job) => {
    		coord.push(String(job.lati/1000000 + "," + job.longi/1000000));
  		});
    
	    dir.route({ 
				locations: coord
    	         });

		map.addLayer(MQ.routing.routeLayer({
					 directions: dir,
        	         fitBounds: true
                }));
                
                
      	var offset = objPopup.offset();
	  	$('.mapDetails')
	    	.fadeIn()
	    	.css({
	      			left: offset.left,
	      			top: offset.top
	    		});   
             
	}catch(e){
		console.log(e);
	}

}


$(document).ready(function () {
  $('#solveButton').click(solve);

  $('#stopSolvingButton').click(function () {
    stopSolving();
  });

  $('#summary').click(getScoreExplanation);

  const jobFrequencyRange = $('#jobFrequencyRange');
  const jobFrequencyValue = $('#jobFrequencyValue');
  const jobLengthRange = $('#jobLengthRange');
  const jobLengthValue = $('#jobLengthValue');

  jobFrequencyRange.on('change', function () {
    jobFrequencyValue.html(jobFrequencyRange.val());
    //restartSimulation(jobFrequencyRange.val(), jobLengthRange.val());
  });
  jobFrequencyRange.on('input', function () {
    jobFrequencyValue.html(jobFrequencyRange.val());
  });
  jobFrequencyValue.html(jobFrequencyRange.val());

  jobLengthRange.on('change', function () {
    jobLengthValue.html(jobLengthRange.val());
    //restartSimulation(jobFrequencyRange.val(), jobLengthRange.val());
  });
  jobLengthRange.on('input', function () {
    jobLengthValue.html(jobLengthRange.val());
  });
  jobLengthValue.html(jobLengthRange.val());

  // Make sure the values are propagated to the server.
  //restartSimulation(jobFrequencyRange.val(), jobLengthRange.val());

  refresh();
});


