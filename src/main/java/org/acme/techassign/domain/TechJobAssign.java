package org.acme.techassign.domain;

import java.util.List;
import java.util.Set;

import static java.util.Collections.emptyList;
import static java.util.Collections.emptySet;

import org.optaplanner.core.api.domain.solution.PlanningEntityCollectionProperty;
import org.optaplanner.core.api.domain.solution.PlanningScore;
import org.optaplanner.core.api.domain.solution.PlanningSolution;
import org.optaplanner.core.api.domain.solution.ProblemFactCollectionProperty;
import org.optaplanner.core.api.domain.valuerange.ValueRangeProvider;
import org.optaplanner.core.api.score.buildin.hardsoft.HardSoftScore;

import com.fasterxml.jackson.annotation.JsonIgnore;

@PlanningSolution
public class TechJobAssign {

	@JsonIgnore
    @ProblemFactCollectionProperty
    private Set<Skill> skills;

    @ProblemFactCollectionProperty
    @ValueRangeProvider(id = "techRange")
    private List<Tech> techs;

    @PlanningEntityCollectionProperty
    @ValueRangeProvider(id = "jobRange")
    private List<Job> jobs;

    @PlanningScore
    private HardSoftScore score;

    private boolean solving;

	public TechJobAssign() {
		// TODO Auto-generated constructor stub
	}

	public TechJobAssign(Set<Skill> skills, List<Tech> techs, List<Job> jobs) {
		this.skills = skills;
		this.techs = techs;
		this.jobs = jobs;
	}

	
    public static TechJobAssign empty() {
    	TechJobAssign problem = new TechJobAssign(
                emptySet(),
                emptyList(),
                emptyList());
        problem.setScore(HardSoftScore.ZERO);
        return problem;
    }	
	
	
	public Set<Skill> getSkills() {
		return skills;
	}

	public List<Tech> getTechs() {
		return techs;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public HardSoftScore getScore() {
		return score;
	}

	public void setScore(HardSoftScore score) {
		this.score = score;
	}

	public boolean isSolving() {
		return solving;
	}
	
	public void setSolving(boolean solving) {
		this.solving = solving;
	}
	
}
