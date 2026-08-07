# 👋 Hello, I'm sxkiss

独立开发者 / 全栈工程师，专注 **AI 大模型 API、微信生态机器人、Cloudflare 边缘部署与自动化工具**。
GitHub 上目前公开了 **44** 个开源仓库，已按领域归好类。

## 🧰 主要技术栈

Python · Go · Rust · TypeScript · JavaScript · PHP · Java · Vue · HTML · Docker

## 📦 项目一览

### 🤖 AI 与大模型 API

- [**doubao-free-api-1**](https://github.com/sxkiss/doubao-free-api-1) — 🚀 豆包大模型逆向API【特长：超强联网搜索】，零配置部署，多路token支持，仅供测试，如需商用请前往官方开放平台。 `TypeScript`
- [**jimeng-free-api-all**](https://github.com/sxkiss/jimeng-free-api-all) — Jimeng AI Free 服务支持即梦超强图像与视频生成能力，包含即梦 4.0 文生图等多款模型，提供文生图、图生图、视频生成功能（官方每日赠 66 积分，可生成 66 次），零配置部署且支持多路 token。 接口与 OpenAI 完全兼容，需从即梦官网获取 sessionid 作为 Authorization 的 Bearer Token，支持多账号接入。提供 Docker 部署方式及 dockerhub 镜像，可通过多种接口调用，包括对话补全、视频生成、图像生成（文生图、图生图）等，满足多样化生成需求。 `TypeScript`
- [**HelloKimi**](https://github.com/sxkiss/HelloKimi) — Kimi的 Cloudflare Worker 2API层，提供 OpenAI协议兼容接口，支持流式对话、Tools调用。无需配置，部署即用。 `TypeScript`
- [**Qwen2API**](https://github.com/sxkiss/Qwen2API) — 让 QwenLM 物尽其用 `JavaScript`
- [**cursor2api-go**](https://github.com/sxkiss/cursor2api-go) — Free claude-sonnet-4.6  | cursor不倒我不倒🙏 `JavaScript`
- [**evolver**](https://github.com/sxkiss/evolver) — The Self-Evolving Agent Protocol (PCEC). It writes its own code. `JavaScript`

### 微信与消息机器人

- [**allbot**](https://github.com/sxkiss/allbot) — 多平台版本xbot `Python`
- [**AgentChat**](https://github.com/sxkiss/AgentChat) — Agent 对话 / 消息聚合实现 `Python`
- [**all-to-agent**](https://github.com/sxkiss/all-to-agent) — 将各类 API / 工具统一转为 Agent 能力 `Python`
- [**wechat-observatory**](https://github.com/sxkiss/wechat-observatory) — WeChat Observatory - LSPosed-based WeChat gateway `Go`
- [**wx-cli**](https://github.com/sxkiss/wx-cli) — WeChat macOS database decryption and query tool `Rust`
- [**wx-filehelper**](https://github.com/sxkiss/wx-filehelper) — 微信文件传输助手网页版工具 `TypeScript`
- [**wx-filehelper-api**](https://github.com/sxkiss/wx-filehelper-api) — 基于WX文件传输助手网页版的TG协议兼容机器人轻量级开发框架 `Python`
- [**wechat-869-media-sender**](https://github.com/sxkiss/wechat-869-media-sender) — 通过 869 客户端发送微信消息（文本/图片/视频/语音） `Python`
- [**MessageForwarder**](https://github.com/sxkiss/MessageForwarder) — 消息转发器（多平台分发） `Python`
- [**RevokeBotMessage**](https://github.com/sxkiss/RevokeBotMessage) — 机器人消息撤回处理 `Python`

### Cloudflare 与边缘部署

- [**workerconsole**](https://github.com/sxkiss/workerconsole) — WorkerConsole 是一个本地 Cloudflare Workers 管理系统，允许您在本地创建、管理、编辑、部署和监控 Workers。 `JavaScript`
- [**edgetunnel**](https://github.com/sxkiss/edgetunnel) — edgetunnel 2.0 VLESS/Trojan 多功能面板 `JavaScript`
- [**cloudflare_temp_email**](https://github.com/sxkiss/cloudflare_temp_email) — CloudFlare free temp domain email 免费收发 临时域名邮箱 支持附件 IMAP SMTP TelegramBot `Vue`
- [**cloud-mail**](https://github.com/sxkiss/cloud-mail) — A Cloudflare-based email service  | 基于 Cloudflare 的邮箱服务  | Cloudflare Email 邮箱 Mail `JavaScript`
- [**worker**](https://github.com/sxkiss/worker) — 轻量 Worker 边缘服务 `Dockerfile`
- [**openclaw-new-ui**](https://github.com/sxkiss/openclaw-new-ui) — OpenClaw 新版 Web 管理界面 `TypeScript`

### 网络与代理

- [**GoProxy**](https://github.com/sxkiss/GoProxy) — GoProxy 从多个公开代理源自动抓取 HTTP/SOCKS5 代理，通过严格验证（出口 IP + 位置 + 延迟）后加入智能代理池，对外提供 HTTP 和 SOCKS5 双协议代理服务。系统采用质量分级、智能补充、自动优化等机制，确保代理池始终保持高质量和稳定性。 `Go`
- [**TavilyProxyManager**](https://github.com/sxkiss/TavilyProxyManager) — 一个透明的 Tavily API 反向代理：将多个 Tavily API Key（额度/credits）汇聚在一个 Master Key 之后，并提供内置 Web UI 用于管理 Key、用量与请求日志。 `Go`
- [**EasyTier**](https://github.com/sxkiss/EasyTier) — A simple, decentralized mesh VPN with WireGuard support. `Rust`
- [**Tunnel**](https://github.com/sxkiss/Tunnel) — 隧道 / 转发服务 `Python`
- [**opencode-free-proxy**](https://github.com/sxkiss/opencode-free-proxy) — OpenCode 免费代理服务 `JavaScript`

### 支付与电商

- [**vmqphp**](https://github.com/sxkiss/vmqphp) — V免签PHP版 完全开源免费的个人免签约解决方案 `PHP`
- [**vmqApk**](https://github.com/sxkiss/vmqApk) — V免签监控端 `Java`
- [**vfkphp**](https://github.com/sxkiss/vfkphp) — V发卡 完全开源免费的个人自动发卡解决方案 `PHP`
- [**ldc-shop**](https://github.com/sxkiss/ldc-shop) — Linux DO Credit Virtual Goods Shop `TypeScript`

### 自动化与工具

- [**dify-for-dsl**](https://github.com/sxkiss/dify-for-dsl) — 本项目是基于dify开源项目实现的dsl工作流脚本合集 `Python`
- [**tgbot-verify**](https://github.com/sxkiss/tgbot-verify) — 一个基于 Python Telegram Bot 的自动化认证工具，能够自动完成 SheerID 平台的学生/教师身份验证流程。 `Python`
- [**Kiro-auto-register**](https://github.com/sxkiss/Kiro-auto-register) — Kiro自动注册，支持邮件验证码获取和多平台账号管理 `TypeScript`
- [**jdck-android**](https://github.com/sxkiss/jdck-android) — 京东获取cookie安卓版 `Java`
- [**JDLogin**](https://github.com/sxkiss/JDLogin) — 京东登录 / Cookie 获取 `Python`
- [**DisasterWarning**](https://github.com/sxkiss/DisasterWarning) — 灾害预警 / 监控服务 `Python`
- [**ccload**](https://github.com/sxkiss/ccload) — Go 语言工具 `Go`
- [**bug**](https://github.com/sxkiss/bug) — TVbox开源版（空壳-自行配置） `HTML`

---

> 首页由 GitHub 全量仓库自动整理生成，保持持续更新。
