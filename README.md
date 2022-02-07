# gitTest
깃허브삭제다뤄볼것(프로젝트,폴더)

1. git bash 다운

2. 로컬 저장소(내 컴퓨터 안에 있는 저장소)에 가서 git bash here 클릭

3. 명령어 쳐준다
$ git rm -rf [폴더명 / 파일명]

$ git commit -m "remove file"

$ git push origin main

순서대로 친다.

만약 오류가 나면 
$ git rm -r --cached [폴더명 및 파일명]을 친다.

첫번째 명령어는 원격저장소와 로컬 저장소 둘을 지우는 것 // git rm -rf
아래의 명령어는 원격저장소에 있는 파일만 지우는 것 // git rm -r --cached
