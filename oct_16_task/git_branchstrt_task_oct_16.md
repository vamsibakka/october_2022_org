# This is the task to create the Branching strategy for practice .

## Steps :
  1. Clone the git repository shopizer from the git hub  and create  three branches such as "develop,master,release".
  2. create the  develop-branch from the master-branch and create the release-branch from the develop-branch .
  3. In the develop-branch  create the job which should trigger  the build for every commit change .
  4. In the release-branch create the job which should trigger the build  at the 11:00 pm every day.
  5. In the main-branch create a job which is manually triggered .
  6. After the creation of the branches and the jobs create a promote job which will trigger at 10:30 pm every day which will merge the release branch changes to the develop branch without fastfarword merge by using the command `git merge <branch-name> --no-ff`.
-----------------------------------------------------------------------------------------
## master branch
```
pipeline{
  agent { label 'java_11'}
  stages{
    stage('shopizer'){
       steps{
          git branch:'<branch name>', url: '<your url>'
}
}
 stage('build'){
    steps{
      sh 'mvn package'
}
}
 stage('archive'){
    steps{
        junit '**/surefire-reports/*.xml'
}
}
}
}
```
## develop branch

```
pipeline{
  agent { label 'java_11'}
  triggers {pollscm('5 * * * 1-5'')}
  stages{
    stage('shopizer'){
       steps{
          git branch:'branch name', url: '<your url of the github>'
  }
}
 stage('build'){
    steps{
      sh 'mvn package'
      sh '**/target/*.war'
}
}
 stage('archive'){
    steps{
        junit '**/surefire-reports/*.xml'
}
}
}
}

```
## release branch 

```
pipeline{
  agent { label 'java_11'}
  triggers {cron('30 17 * * 1-5'')}
  stages{
    stage('shopizer'){
       steps{
          git branch:'<the branch name>', url: '<your git hub url >'
}
}
 stage('build'){
    steps{
      sh 'mvn package'
      sh '**/target/*.war'
}
}
 stage('archive'){
    steps{
        junit '**/surefire-reports/*.xml'
}
}
}
}
```

 * Then create a promote job for the develop and release .
