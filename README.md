###IMP:
**Please refer to this branch as the correct one for evaluation**

## Short Definitons

-**DevOps:** DevOps is an SWE culture tht unites the development and operations team under one umbrella of tools and practices to automate every stage. This solved the problem of devs writing the code and throwing it "over the wall" to the Ops and greatly reduced friction hence smoothening workflows.

-**Continuous Integration:** Now DevOps has CI/CD as one of its featutures and CI refers to Continuous integration meaning that devs can integrate their code changes directly into a shared repo frequently and continuously, and branches of source code are rebuilt automatically every time codes are commited to the source content allowing rapid bug detection through testing and hence rapid prototyping with a higher code quality.

-**Continuous Deployment:** Now the next part is CD standing for continuous Delivery/Deployment where it does the job of Automating the path after CI so code is always deployable (Delivery) or automatically deployed to environments (Deployment) with minimal manual steps.

-**Containerization:** So before getting to the process, the idea of containers is packaging everything you need for developing the product i.e, packages, libraries, tools,etc into a container, calling it containerization.

-**Rollback:** Rollback as it sounds, is reverting a system or codebase to a previous working state when a new change causes problems, minimizing downtime and impact.

### Connections:

Now, how is all this connected to DevOps principles? 

- **The script** (script.sh) automates environment checks (pwd, user, memory, disk, file listing). Automating routine diagnostics whioch will become dependable, and quick.
- Logging the script output to script.log creates a traceable artifact. This mirrors how pipelines capture logs for troubleshooting.
- Initializing Git, committing artifacts, and pushing to a dedicated feature branch reflects safe change isolation. If something goes wrong, Git’s history enables a quick **rollback**, connecting the rollback concept directly to the workflow.
- Keeping the main branch clean and working on a feature branch aligns with **CI practices**, changes are integrated intentionally, reviewed, and only promoted when stable.
- Instructions and scripts make the process **reproducible for anyone** on the team—core to DevOps’ consistency across environments.

### How i completed the assignment:

- So Firstly as i was on the lab pc i had to install Git bash and then i set everything up using 
 
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

- Then i made a directory named exam using 

mkdir -p exam  

(added the p flag for the parent directory creations if in case anything has to change later)

-Then i changed into the created directory using 

cd exam

- Then i created the file naming it README.md using

touch README.md

and entering vim for editing using 

nano README.md

- Then i wrote my content and saved the file.

- Then i creted script.sh file and then a log files to store logs called script.log

- I made the sh file executable using 

chmod +x script.sh

- Then i executed the scrpit once to store the logs into the script.log file

./script.sh > script.log

- Now obviously before pushing, as a sane human being i verified if all my files exist using 

ls -la

- Now i initialised an empty git repo in the exam directory and created a branch out of it called "feature" and kept my main branch clean

- I added all the files using 

git add README.md script.sh script.log

- I then added a commit using 

git commit -m and added a commit message which i dont remember now

- And then i added a remote origin with my repo's link using

git remote add origin (my repo link)

- And yes then i finnaly pushed on the about branch using 

git push -u origin feature

- And yes obviously it prompted me with login so i used a Personal Access Token.

- Now after pushing i deliberately left some errors so i could demonstrate CI/CD although on an icomparable level asto how its used, so yes some part of this is written after pushing. 


**THANK YOU FOR YOUR TIME**  






