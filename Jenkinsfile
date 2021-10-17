pipeline {
    agent any

    stages {
        stage('Git Clone') {
            steps {
                git clone https://github.com/smagan1/jenkins-test.git
                echo "pulled the code"
            }
        }
        stage('Make script executable') {
            steps {
                sh '''chmod 755 testscript.sh
                ./testscript.sh > testresult.txt'''   
            }
        }
        stage("Fingerprint artifact") {
            steps {
                fingerprint 'testresult.txt'
            }
        }
        stage("Archive test result") {
            steps {
                archiveArtifacts artifacts: 'testresult.txt', followSymlinks: false
            }
        }
    }
}

