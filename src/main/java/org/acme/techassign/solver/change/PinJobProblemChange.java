package org.acme.techassign.solver.change;

import org.acme.techassign.domain.Job;
import org.acme.techassign.domain.TechJobAssign;
import org.optaplanner.core.api.solver.change.ProblemChange;
import org.optaplanner.core.api.solver.change.ProblemChangeDirector;

public class PinJobProblemChange  implements ProblemChange<TechJobAssign>{
    private final Job job;

    public PinJobProblemChange(Job job) {
        this.job = job;
    }

    @Override
    public void doChange(TechJobAssign workingCallCenter, ProblemChangeDirector problemChangeDirector) {
        problemChangeDirector.changeProblemProperty(job, workingCall -> {
            workingCall.setPinned(true);
            //workingCall.setPickUpTime(LocalTime.now());
        });
    }
}
