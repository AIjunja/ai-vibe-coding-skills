# AI Vibe Coding Skills

비개발자와 바이브 코딩 입문자가 작은 웹앱을 끝까지 만들고, 디자인을
레퍼런스 기반으로 정돈하도록 돕는 공개 Codex 스킬 모음입니다

## 포함된 스킬

### `guided-webapp-builder`

기획서를 한 번에 거대한 앱으로 만들지 않고 다음 체크포인트 하나씩
진행합니다

`범위 확인 → 환경 확인 → 첫 화면 → 핵심 기능 → 오류·모바일 → 빌드 → 인수인계`

### `reference-driven-web-design`

레퍼런스의 구조와 시각 원리를 먼저 분석한 뒤 작동하는 기능을 유지하며
정보 위계, 입력, 결과, 오류 상태, 모바일 화면을 정돈합니다

Gmarket Sans Light, Medium, Bold와 OFL 라이선스가 포함되어 있습니다

## Windows 설치

PowerShell에서 아래 순서로 실행합니다

```powershell
git clone https://github.com/AIjunja/ai-vibe-coding-skills.git
cd ai-vibe-coding-skills
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

한 개만 설치하려면 다음처럼 이름을 지정합니다

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Skill guided-webapp-builder
```

## macOS와 Linux 설치

```bash
git clone https://github.com/AIjunja/ai-vibe-coding-skills.git
cd ai-vibe-coding-skills
bash ./install.sh
```

설치 후 Codex를 다시 열고 아래처럼 요청합니다

```text
$guided-webapp-builder

첨부한 기획서를 읽고 오늘 만들 범위와 미룰 범위를 나눠주세요
아직 코드를 수정하지 말고 다음 체크포인트 하나만 제안해주세요
```

```text
$reference-driven-web-design

현재 작동하는 기능은 바꾸지 말고 레퍼런스 기반 디자인 점검을 진행해주세요
수정 전에 참고한 원리와 바꿀 항목을 먼저 보여주세요
```

## 설치 확인

아래 폴더가 보이면 설치된 상태입니다

```text
~/.codex/skills/guided-webapp-builder
~/.codex/skills/reference-driven-web-design
```

## 수업과 조직에서 사용할 때

- 프로젝트마다 `AGENTS.md` 또는 `COURSE_CONSTRAINTS.md`에 기술 스택,
  개인정보, 외부 API, 배포 범위를 적어주세요
- 실제 고객정보, 비밀번호, 인증코드, API 키를 예제나 공개 저장소에 넣지 마세요
- 스킬은 판단과 검수를 돕는 작업 설명서입니다 결과의 정확성과 공개 여부는
  사람이 직접 확인해야 합니다
- 짧은 수업에서는 DB, 로그인, 결제, 자동 게시보다 샘플 데이터와 핵심 흐름
  하나를 먼저 완성하는 것을 권장합니다

## 라이선스

코드와 스킬 문서는 MIT License를 따릅니다 Gmarket Sans는 폰트 폴더 안의
OFL 라이선스를 따릅니다
