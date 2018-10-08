# Embedded System 1주차 강의 내용 정리

## 라즈베리 설정 방법

1. Serial Line COM3,speed 115200 (set Putty)
2. login id: id입력 password 입력
3. `iwconfig` /`ifconfig`명령어를 통해 현재 연결상태 확인
4. `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf` 후 `sudo reboot` (재부팅) 후 로그인
5. `iwconfig` 를 입력하여 무선 연결 제대로 되었는지 확인
   - ip가 잡혔다 = 네트워크에 연결 성공!
6. 패키지 업데이트
    - `sudo apt-get upgrade`
    - `sudo apt-get update`
7. 라즈베리 파이 기타 설정
     - 업데이트 작업 완료 후 `sudo-raspi-config` 를 실행하여 파이 모듈의 기본 설정 변경 가능     

---
### 마무으리

1주차 강의 내용을 이제와서 정리하는 것도 아주 웃기지만 이때 컴트리에 저주가 걸린것 마냥 컴트리 사람들만 잘 안되서 어이가 없었다. 아 제발 밀리지 말자 ......이제 2주차 리눅스 명령어 정리하러가즈아 !!!!!!!!!!!!
