# rebuild nft project

install node.js

pwd
ls
node -v
npm init -y
npm install express --save
npm i mysql dotenv multer ejs -s
npm i bcryptjs jsonwebtoken cookie-parser -s
npm i nodemon -s

npm start setting

## sequelize

npm i morgan nunjucks -s
npm i sequelize sequelize-cli mysql2 -s

npx sequelize init

##### Study

<How to mint NFT>
install Web3
Create a mint-nft.js file
Grab your contract ABI
Configure the metadata for your NFT using IPFS
Create an instance of your contract
Update the .env file
Create your transaction

<MVC 모델>
Model -> db sql querry
View -> front-end
Controller -> 페이지 연결 전달

- public ->
- config ->
- bin ->

<middleware>
app.use(middleware) // 모든 요청에 미들웨어 실행
app.use("/abc", middleware) // abc로 시작하는 요청에서 미들웨어 실행
app.post("/abc, middleware) // abc로 시작하는 POST 요청에서 미들웨어 실행

app.use("/", (req, res, next)) => {

}

세번째 매개변수 next를 사용해야 다음 미들웨어로 넘어감

<JWT 구조>
header -> 알고리즘 정보
payload -> 데이터 인코딩
signature -> 문자열, 시그니처로 변조 여부 확인 가능

JWT secret 비밀키를 사용해서 시그니처 검사하여 변조 확인

<JWT로그인 과정>

1. 브라우저에서 login 요청
2. 서버에서 JWT 발급
3. 발급한 JWT를 브라우저로 보냄
4. 이후 요청시 발급받은 JWT를 함께 보냄
5. 서버에서 JWT에 포함된 Signature 확인후 user 정보를 request에 담아서 보냄
6. 서버에서 브라우저의 요청 처리
7. 브라우저로 response를 보낸다.
