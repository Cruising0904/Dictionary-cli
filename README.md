# Dictionary-cli
20230407 

제대로 익숙하지 않은상태에서 뭘 만들려고 하니 뭔가 알듯 말듯한 기분이 다.
구상하는 연습도 코딩하는데 익숙한것도 차차 하다보면 나아질거라 믿고 연습연습

Dart Programing before Flutter. After doing this project I feel fraustrated to not knowing grammar precisely. So that I have to spend much more time to double check for it.
I feel I should train with basics more.


모르고 처음에 master 브랜치로 시작했다.
```
git branch -m mster main
```
main 이란 브랜치가 이미 있어서 안된다.. main 브랜치에서 read.md 작성해놔서 그렇..

```
git branch -a
```
브랜치 확인. 리모트 origin 도 파악

알아보는 동안에 checkout 하면서 main 으로 돌아가 있었다. 다시 master로 돌아오자. 커맨드 입력하려면 해당 브랜치에 있어야 하는듯 하다.
```
git checkout master
```

다시 브랜치를 이동하는 커맨드 (-m 이 move 라면 -M 은 move and force)
```
git branch -M master main
```

그리고 fetch 나 pull 로 커밋들을 받아온다.

```
git fetch or pull 
```
pull 은 에러가 날 수 도 있다. 그러면 에러메시지를 참고하자

브랜치 오리진을 변경하자
```
git branch -u origin/main main
```

확인
```
git remote set-head origin -a
```

