pipeline {
    agent any

    stages {
        stage('Informacion') {
            steps {
                echo "Ejecutando build #${env.BUILD_NUMBER} del job ${env.JOB_NAME}"
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                sh 'bash scripts/build.sh'
            }
        }
        stage('Archivar') {
            steps {
                archiveArtifacts artifacts: 'salida/reporte.txt'
            }
        }
    }

    post {
        success { echo 'El pipeline termino correctamente.' }
        failure { echo 'El pipeline fallo.' }
    }
}
