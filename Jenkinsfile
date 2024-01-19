pipeline {
  environment {
    registry = 'eeacms/marine-backend'
    template = 'templates/marine-backend'
    GIT_NAME = 'marine-backend'
  }

  agent any

  stages {
    

    stage('Build & Test') {
       when {
         anyOf {
           environment name: 'CHANGE_ID', value: ''
           allOf {
             not { environment name: 'CHANGE_ID', value: '' }
             environment name: 'CHANGE_TARGET', value: 'master'
           }
         }
      }
      environment {
        IMAGE_NAME = BUILD_TAG.toLowerCase()
      }
      steps {
        node(label: 'docker') {
          script {
            try {
              checkout scm
              sh '''sed -i "s|eeacms/marine-backend|${IMAGE_NAME}|g" devel/Dockerfile'''
              sh '''docker build -t ${IMAGE_NAME} .'''
              sh '''docker build -t ${IMAGE_NAME}-devel devel'''
              sh '''docker run -i --name=${IMAGE_NAME} -e EXCLUDE="${EXCLUDE}" -e GIT_BRANCH="${CHANGE_TARGET:-$GIT_BRANCH}" ${IMAGE_NAME}-devel /debug.sh tests'''
            } finally {
              sh script: "docker rm -v ${IMAGE_NAME}", returnStatus: true
              sh script: "docker rmi ${IMAGE_NAME}", returnStatus: true
              sh script: "docker rmi ${IMAGE_NAME}-devel", returnStatus: true     
            }
          }
        }

      }
    }



    stage('Release') {
      when {
        buildingTag()
      }
      steps{
        node(label: 'docker') {
          script {
            withCredentials([string(credentialsId: 'eea-jenkins-token', variable: 'GITHUB_TOKEN'),  usernamePassword(credentialsId: 'jekinsdockerhub', usernameVariable: 'DOCKERHUB_USER', passwordVariable: 'DOCKERHUB_PASS'), string(credentialsId: 'marinebackend-devel-trigger', variable: 'TRIGGER_URL')]) {
              sh '''docker pull eeacms/gitflow; docker run -i --rm --name="$BUILD_TAG"  -e GIT_BRANCH="$BRANCH_NAME" -e GIT_NAME="$GIT_NAME" -e DOCKERHUB_REPO="$registry" -e GIT_TOKEN="$GITHUB_TOKEN" -e DOCKERHUB_USER="$DOCKERHUB_USER" -e DOCKERHUB_PASS="$DOCKERHUB_PASS"  -e DEPENDENT_DOCKERFILE_URL="$DEPENDENT_DOCKERFILE_URL" -e TRIGGER_WAIT_FOR_LATEST="yes" -e TRIGGER_RELEASE="eeacms/marine-backend-devel;$TRIGGER_URL" -e RANCHER_CATALOG_PATHS="$template" -e GITFLOW_BEHAVIOR="RUN_ON_TAG" eeacms/gitflow'''
             }
          }
        }
      }
    }

  }

  post {
    changed {
      script {
        def url = "${env.BUILD_URL}/display/redirect"
        def status = currentBuild.currentResult
        def subject = "${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
        def summary = "${subject} (${url})"
        def details = """<h1>${env.JOB_NAME} - Build #${env.BUILD_NUMBER} - ${status}</h1>
                         <p>Check console output at <a href="${url}">${env.JOB_BASE_NAME} - #${env.BUILD_NUMBER}</a></p>
                      """

        def color = '#FFFF00'
        if (status == 'SUCCESS') {
          color = '#00FF00'
        } else if (status == 'FAILURE') {
          color = '#FF0000'
        }
        emailext (subject: '$DEFAULT_SUBJECT', to: '$DEFAULT_RECIPIENTS', body: details)
      }
    }
  }
}
