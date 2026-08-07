<div align="center">

# 🤖 机器人框架 · sxkiss

**多平台智能机器人 & 自动化 · 独立开发者**

--------------------------------------------------------------------------------

以 **AllBot 多平台机器人框架** 为轴心，串起微信 / QQ / Telegram / 企业微信的插件化生态，
再延伸到大模型 API、Cloudflare 边缘 与 AI Agent 工具链，形成「**框架 → 生态 → 基建**」三层技术栈。

![GitHub Stats](https://stats.justsong.cn/api/github/?username=sxkiss&theme=dark)

</div>

---

## 🎯 关于我

专注 **机器人框架** 与 **自动化落地方案**的独立开发者：

- 🤖 主导 **AllBot** 多平台机器人系统（插件化、事件驱动、全异步）。
- 🔌 构建微信侧完整闭环：**869 通道 ↔ Bot API 框架 ↔ 消息转发 ↔ 撤回处理**。
- 🧠 沉淀大模型 API 与 AI Agent 基建（豆包 / 即梦 / Kimi / Qwen / Claude 免费接入）。
- ☁️ 熟悉 Cloudflare Workers 边缘部署、代理与隧道等网络基建。

---

## ⭐ 核心项目：AllBot 机器人框架

> 插件化、事件驱动的多平台智能机器人系统：一套代码接入 **微信 · QQ · Telegram · 企业微信 · Web · Windows**，
> 内置 13+ 插件，支持 Dify / OpenAI / FastGPT / SiliconFlow 多 AI 后端，Docker 一键部署。

| 维度 | 说明 |
|------|------|
| 架构 | 插件化 + 事件驱动 · 插件热加载 · 优先级调度（0-99） |
| 平台 | 微信（869/pad/ipad/mac/win）· QQ(NTQQ) · Telegram · 企业微信 · Web · Windows |
| AI 后端 | Dify · OpenAI · FastGPT · SiliconFlow 等多模型接入 |
| 基建 | 全异步 · SQLite+Redis · RabbitMQ · APScheduler · Docker Compose |
| 配套 | 微信 869 通道 · 文件助手 Bot API · 消息转发/撤回 · Claw/OpenClaw 插件 |

## 📦 项目总览

### 🤖 机器人框架与生态

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`allbot`**](https://github.com/sxkiss/allbot) | 多平台版本xbot | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`wechat-869-media-sender`**](https://github.com/sxkiss/wechat-869-media-sender) | 869 客户端微信收发（文本/图片/视频/语音） | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`wx-filehelper-api`**](https://github.com/sxkiss/wx-filehelper-api) | 基于WX文件传输助手网页版的TG协议兼容机器人轻量级开发框架 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`wx-filehelper`**](https://github.com/sxkiss/wx-filehelper) | 微信文件传输助手网页版工具 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`wechat-observatory`**](https://github.com/sxkiss/wechat-observatory) | WeChat Observatory - LSPosed-based WeChat gateway | ![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white) |
| [**`wx-cli`**](https://github.com/sxkiss/wx-cli) | WeChat macOS database decryption and query tool | ![Rust](https://img.shields.io/badge/Rust-000000?style=flat-square&logo=rust&logoColor=white) |
| [**`MessageForwarder`**](https://github.com/sxkiss/MessageForwarder) | 消息转发器（多平台分发） | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`RevokeBotMessage`**](https://github.com/sxkiss/RevokeBotMessage) | 机器人消息撤回处理 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`tgbot-verify`**](https://github.com/sxkiss/tgbot-verify) | 一个基于 Python Telegram Bot 的自动化认证工具，能够自动完成 SheerID 平台的学生/教师身份验证流程。 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`HermesPlugin`**](https://github.com/sxkiss/HermesPlugin) | OpenClaw 微信渠道（ocwx）插件 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`ClawPlugin`**](https://github.com/sxkiss/ClawPlugin) | Claw 平台插件 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`openclaw-new-ui`**](https://github.com/sxkiss/openclaw-new-ui) | OpenClaw 新版 Web 管理界面 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`all-to-agent`**](https://github.com/sxkiss/all-to-agent) | 将 API/工具统一转为 Agent 能力 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`AgentChat`**](https://github.com/sxkiss/AgentChat) | Agent 对话 / 消息聚合实现 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |

### 🧠 AI 与多模型 API

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`doubao-free-api-1`**](https://github.com/sxkiss/doubao-free-api-1) | 🚀 豆包大模型逆向API【特长：超强联网搜索】，零配置部署，多路token支持，仅供测试，如需商用请前往官方开放平台。 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`jimeng-free-api-all`**](https://github.com/sxkiss/jimeng-free-api-all) | Jimeng AI Free 服务支持即梦超强图像与视频生成能力，包含即梦 4.0 文生图等多款模型，提供文生图、图生图、视频生成功能（官方每日赠 66 积分，可生成 66 次），零配置部署且支持多路 token。 接口与 OpenAI 完全兼容，需从即梦官网获取 sessionid 作为 Authorization 的 Bearer Token，支持多账号接入。提供 Docker 部署方式及 dockerhub 镜像，可通过多种接口调用，包括对话补全、视频生成、图像生成（文生图、图生图）等，满足多样化生成需求。 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`HelloKimi`**](https://github.com/sxkiss/HelloKimi) | Kimi的 Cloudflare Worker 2API层，提供 OpenAI协议兼容接口，支持流式对话、Tools调用。无需配置，部署即用。 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`Qwen2API`**](https://github.com/sxkiss/Qwen2API) | 让 QwenLM 物尽其用 | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`cursor2api-go`**](https://github.com/sxkiss/cursor2api-go) | Free claude-sonnet-4.6  | cursor不倒我不倒🙏 | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`evolver`**](https://github.com/sxkiss/evolver) | The Self-Evolving Agent Protocol (PCEC). It writes its own code. | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`dify-for-dsl`**](https://github.com/sxkiss/dify-for-dsl) | 本项目是基于dify开源项目实现的dsl工作流脚本合集 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |

### ☁️ Cloudflare 与边缘部署

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`workerconsole`**](https://github.com/sxkiss/workerconsole) | WorkerConsole 是一个本地 Cloudflare Workers 管理系统，允许您在本地创建、管理、编辑、部署和监控 Workers。 | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`edgetunnel`**](https://github.com/sxkiss/edgetunnel) | edgetunnel 2.0 VLESS/Trojan 多功能面板 | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`cloudflare_temp_email`**](https://github.com/sxkiss/cloudflare_temp_email) | CloudFlare free temp domain email 免费收发 临时域名邮箱 支持附件 IMAP SMTP TelegramBot | ![Vue](https://img.shields.io/badge/Vue-4FC08D?style=flat-square&logo=vuedotjs&logoColor=white) |
| [**`cloud-mail`**](https://github.com/sxkiss/cloud-mail) | A Cloudflare-based email service  | 基于 Cloudflare 的邮箱服务  | Cloudflare Email 邮箱 Mail | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |
| [**`worker`**](https://github.com/sxkiss/worker) | 轻量 Worker 边缘服务 | ![Dockerfile](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) |

### 🕸️ 网络与代理

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`GoProxy`**](https://github.com/sxkiss/GoProxy) | GoProxy 从多个公开代理源自动抓取 HTTP/SOCKS5 代理，通过严格验证（出口 IP + 位置 + 延迟）后加入智能代理池，对外提供 HTTP 和 SOCKS5 双协议代理服务。系统采用质量分级、智能补充、自动优化等机制，确保代理池始终保持高质量和稳定性。 | ![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white) |
| [**`TavilyProxyManager`**](https://github.com/sxkiss/TavilyProxyManager) | 一个透明的 Tavily API 反向代理：将多个 Tavily API Key（额度/credits）汇聚在一个 Master Key 之后，并提供内置 Web UI 用于管理 Key、用量与请求日志。 | ![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white) |
| [**`EasyTier`**](https://github.com/sxkiss/EasyTier) | A simple, decentralized mesh VPN with WireGuard support. | ![Rust](https://img.shields.io/badge/Rust-000000?style=flat-square&logo=rust&logoColor=white) |
| [**`Tunnel`**](https://github.com/sxkiss/Tunnel) | 隧道 / 转发服务 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`opencode-free-proxy`**](https://github.com/sxkiss/opencode-free-proxy) | OpenCode 免费代理服务 | ![JavaScript](https://img.shields.io/badge/JavaScript-e8d44d?style=flat-square&logo=javascript&logoColor=white) |

### 💰 支付与电商

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`vmqphp`**](https://github.com/sxkiss/vmqphp) | V免签PHP版 完全开源免费的个人免签约解决方案 | ![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white) |
| [**`vmqApk`**](https://github.com/sxkiss/vmqApk) | V免签监控端 | ![Java](https://img.shields.io/badge/Java-E76F00?style=flat-square&logo=openjdk&logoColor=white) |
| [**`vfkphp`**](https://github.com/sxkiss/vfkphp) | V发卡 完全开源免费的个人自动发卡解决方案 | ![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white) |
| [**`ldc-shop`**](https://github.com/sxkiss/ldc-shop) | Linux DO Credit Virtual Goods Shop | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |

### 🧰 自动化与工具

| 项目 | 简介 | 语言 |
|------|------|------|
| [**`jdck-android`**](https://github.com/sxkiss/jdck-android) | 京东获取cookie安卓版 | ![Java](https://img.shields.io/badge/Java-E76F00?style=flat-square&logo=openjdk&logoColor=white) |
| [**`JDLogin`**](https://github.com/sxkiss/JDLogin) | 京东登录 / Cookie 获取 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`Kiro-auto-register`**](https://github.com/sxkiss/Kiro-auto-register) | Kiro自动注册，支持邮件验证码获取和多平台账号管理 | ![TypeScript](https://img.shields.io/badge/TS-3178C6?style=flat-square&logo=typescript&logoColor=white) |
| [**`DisasterWarning`**](https://github.com/sxkiss/DisasterWarning) | 灾害预警 / 监控服务 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`Bncr`**](https://github.com/sxkiss/Bncr) | 自动化脚本容器 | ![Python](https://img.shields.io/badge/Python-0055A5?style=flat-square&logo=python&logoColor=white) |
| [**`ccload`**](https://github.com/sxkiss/ccload) | Go 语言工具 | ![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white) |
| [**`bug`**](https://github.com/sxkiss/bug) | TVbox开源版（空壳-自行配置） | ![HTML](https://img.shields.io/badge/HTML-E34F26?style=flat-square&logo=html5&logoColor=white) |

---

## 🛠️ 技术栈

![Python](https://img.shields.io/badge/Python-161B22?style=for-the-badge&logo=python&logoColor=white) ![Go](https://img.shields.io/badge/Go-161B22?style=for-the-badge&logo=go&logoColor=white) ![Rust](https://img.shields.io/badge/Rust-161B22?style=for-the-badge&logo=rust&logoColor=white) ![TypeScript](https://img.shields.io/badge/TypeScript-161B22?style=for-the-badge&logo=typescript&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-161B22?style=for-the-badge&logo=javascript&logoColor=white) ![PHP](https://img.shields.io/badge/PHP-161B22?style=for-the-badge&logo=php&logoColor=white) ![Java](https://img.shields.io/badge/Java-161B22?style=for-the-badge&logo=openjdk&logoColor=white) ![Vue](https://img.shields.io/badge/Vue-161B22?style=for-the-badge&logo=vuedotjs&logoColor=white) ![Docker](https://img.shields.io/badge/Docker-161B22?style=for-the-badge&logo=docker&logoColor=white) ![Cloudflare](https://img.shields.io/badge/Cloudflare-161B22?style=for-the-badge&logo=cloudflare&logoColor=white) ![Redis](https://img.shields.io/badge/Redis-161B22?style=for-the-badge&logo=redis&logoColor=white) ![RabbitMQ](https://img.shields.io/badge/RabbitMQ-161B22?style=for-the-badge&logo=rabbitmq&logoColor=white)

## 📊 统计

- 公开仓库 **42** 个
- 语言分布：`Python`×15, `TypeScript`×7, `JavaScript`×7, `Go`×4, `PHP`×2, `Java`×2, `Rust`×2, `HTML`×1, `Vue`×1, `Dockerfile`×1

---

<div align="center">

_框架 ➜ 生态 ➜ 服务 · 持续构建中_

</div>
