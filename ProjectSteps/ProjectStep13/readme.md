# Project Step 13 - Sprint Planning
## Ready for review:

### Step 1. 
From the Issues tab in Github, add a new issue. A well constructed issue should contain:

1. A user story. This is not always going to be the system user. This is meant to provide clarification and context to the assigned engineer.
2. Acceptance criteria. Clarify the objectives of the issue. Know when it's done.
3. Additional supporting information such as diagrams, descriptions, screen captures, error messages, etc.. to assist the developer with reproducing the error, or linking to pre-existing designs.
- (Optional) Milestone description if this is targetted to a particular build or document or subcomponent or phase
- (Optional) Any relevant labels such as (defect) Severity or (issue) Priority see notes below
note... add tasks to the issue by starting the entry with "- [ ]" or "- [x]"

You should have at least 15 (probably more) items on your backlog list.

### Step 2. 
Create a project board from your repository (can be Sprint 1, Sprint 2, ...) and add prioritized issues from your backlog. Decide how many you will complete during the Sprint. Move the issues across the columns from +To Do (Planned)

- In Progress (WIP) .. to
- Done (Complete)
- [Project page here](https://github.com/gowebUSA/MSSA-Project/projects/1)

You will likely not want to have more than 2 or 3 active issues "In Progress" at a time.

### Step 3. 
Submit (3) screenshots of the (a.) Issues list, the opened (b.)Issue Details for one of the project issues, and (c.) the current active project bpard showing the planned sprint items.

1. ![Project Sprint Planning](https://github.com/gowebUSA/MSSA-Project/blob/master/files/projects.png)
2. ![Open Issues](https://github.com/gowebUSA/MSSA-Project/blob/master/files/issues-open.png)
3. ![Closed Issues](https://github.com/gowebUSA/MSSA-Project/blob/master/files/issues-closed.png)

### Finally
Paste the link to your [Github project page](https://github.com/gowebUSA/MSSA-Project) in the comments box to indicate that the assignmetn is ready for review.

## SDLC .. background
In general terms, every formal process is a prescribed sequence of activities.

The software engineering discipline has continually evolved and developed formal processes for the development of systems and software in an attempt to improve efficiency and product quality.

A simplified view of the so-called waterfall system development life cycle (SDLC) is comprised of

- requirements gathering and decomposition
- solution design
- implementation and test
- and maintenance and support

With some tailoring and variation, these cascading phases are delimited by stakeholder reviews and milestone gates.

Although incremental and spiral development introduce other considerations with possibly different review cycles and activities, each of the phases listed above are still followed.

Some of the challenges with these traditional workflows include long lag time between stakeholder feedback through interim progress reviews, artifically imposed serialization of activities, and complexities involving change management.

## Agile Software Development
In recent years, members of the community met and published 12 principles to improve on these challenges in the [Manifesto for Agile Software Development](http://agilemanifesto.org/). This meeting started an movement to introduce significant change and process improvement to engineering and other business processes.

Among the better known methodologies which have grown out of these principles are "Scrum" and "Kanban"

## Scrum
The [Scrum methodology](http://scrumtrainingseries.com/Intro_to_Scrum/) intends to deliver progressively more mature versions of a product solution in short time intervals called sprints with more frequent feedback interaction with stakeholders. The practice calls for daily team interaction, and a formal cycle of planning and delivery meetings. Although the process is often tailored, and is likely to vary considerably between teams, the scrum team concerns themselves only with the issues formally assigned and committed for the brief sprint period and collaborates internally. The practice is sometimes criticized for lacking longer cycle visibility, planning, and tracking but it is the Product Owner's responsibility to balance the prioritiezed backlog list against program objectives, in order to effectively achieve a final product delivery which meets top level requirements and avoid a perpetual cycle of change without progress toward completion.

## Kanban
Another practice which has been associated with the efforts toward more agile software development, is called Kanban from the Japanese meaning sign or billboard. This practice is best know from process documentation associated with Toyota automotive company's manufacturing practices. The practice involves posting physical task cards which are visually advanced from states of "not started", "in-progress", and "complete." Primary goals of this are visibility into progess, process bottlenecks and issues, and reducing or eliminating waiting times by using a just-in-time pull rather than push strategy.

Although these practices so(commonly accepted classifications)

## Defect Severity
Often subjective. The tester or author of a defect will often recommend a defect severity.

Critical: The defect affects critical functionality or critical data. It does not have a workaround. Example: Unsuccessful installation, complete failure of a feature. Major: The defect affects major functionality or major data. It has a workaround but is not obvious and is difficult. Example: A feature is not functional from one module but the task is doable if 10 complicated indirect steps are followed in another module/s. Minor: The defect affects minor functionality or non-critical data. It has an easy workaround. Example: A minor feature that is not functional in one module but the same task is easily doable from another module. Trivial: The defect does not affect functionality or data. It does not even need a workaround. It does not impact productivity or efficiency. It is merely an inconvenience. Example: Petty layout discrepancies, spelling/grammatical errors. Severity is also denoted as:

Cat.1 (or S1) = Critical Cat.2 (or S2) = Major Cat.3 (or S3) = Minor Cat.4 (or S4) = Trivial

## Issue Priority
Priority can be categorized into the following levels: priority is set by the product owner or Configuration Control Board (CCB). Some factors which may be considered are customer requirements, budget, schedule, and re-classification of severity

Pri.1 = Urgent: Must be fixed immediately / in the next build. Pri.2 = High: Must be fixed in any of the upcoming builds but should be included in the release. Pri.3 = Medium: May be fixed after the release / in the next release. Pri.4 = Low: May or may not be fixed at all. Sometimes use slightly different terminology and activities, they are not mutually exclusive.
