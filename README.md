<div align="center">

# 🤖 机器人框架 · sxkiss

**多平台智能机器人 · AI Agent 基建 · 自动化落地**

--------------------------------------------------------------------------------

以 **AllBot 多平台机器人框架** 与 **Multi-Agent 协作平台** 为双主轴，
串起微信 / QQ / Telegram / 企业微信的插件化生态，再延伸到模型 API 网关、
Cloudflare 边缘基建与 Android 端侧 AI 能力，形成「**框架 → Agent → 基建**」三层技术栈。

![GitHub Stats](https://stats.justsong.cn/api/github/?username=sxkiss&theme=dark)

</div>

---

## 🎯 关于我

专注 **机器人框架**、**AI Agent 系统** 与 **自动化落地方案** 的独立开发者：

- 🤖 主导 **AllBot** 多平台机器人系统（插件化、事件驱动、全异步）。
- 🧠 构建 **Multi-Agent** 分层协作平台（crew 编排、工具调用、任务分发）。
- 🔌 打通微信侧完整闭环：**869 通道 ↔ Bot API 框架 ↔ 消息转发 ↔ 撤回处理**。
- 🌐 沉淀模型 API 兼容层与反向代理（OpenAI 协议适配、多账号轮转、流式工具调用）。
- ☁️ 熟悉 Cloudflare Workers 边缘部署、临时邮箱、隧道与代理池基建。
- 📱 探索 Android 端侧 AI 基础设施（无头服务、OpenAPI 暴露、本地推理）。

---

## ⭐ 核心项目

### 1. AllBot · 多平台机器人框架

> 插件化、事件驱动的多平台智能机器人系统：一套代码接入 **微信 · QQ · Telegram · 企业微信 · Web · Windows**，
> 内置 13+ 插件，支持 Dify / OpenAI / FastGPT / SiliconFlow 多 AI 后端，Docker 一键部署。

| 维度 | 说明 |
|------|------|
| 架构 | 插件化 + 事件驱动 · 插件热加载 · 优先级调度（0-99） |
| 平台 | 微信（869/pad/ipad/mac/win）· QQ(NTQQ) · Telegram · 企业微信 · Web · Windows |
| AI 后端 | Dify · OpenAI · FastGPT · SiliconFlow 等多模型接入 |
| 基建 | 全异步 · SQLite+Redis · RabbitMQ · APScheduler · Docker Compose |
| 配套 | 微信 869 通道 · 文件助手 Bot API · 消息转发/撤回 · Claw/Hermes 插件 |

### 2. Multi-Agent · 分层协作 AI 平台

> 多 Agent 分层协作系统：经理 → 部门 → 成员三级编排，工具按需授权，任务可派发、可回溯。

| 维度 | 说明 |
|------|------|
| 编排 | 分层 crew 协作 · 角色/部门/成员 · 动态派发 |
| 能力 | 工具调用 · 记忆持久化 · 多模型路由 · 定时任务 |
| 交付 | 微信 / Web 双端接入 · 结果主动回推 |

---

## 📦 项目总览

> 公开仓库 **68** 个，以下按领域归类（数据更新于 2026-10-23）。

### 🤖 机器人框架与生态

| 项目 | 简介 | 语言 |
|------|------|------|
| [`allbot`](https://github.com/sxkiss/allbot) | 多平台版本 xbot · 插件化机器人框架 ⭐12 | Python |
| [`wechat-869-media-sender`](https://github.com/sxkiss/wechat-869-media-sender) | 869 客户端微信收发（文本/图片/视频/语音/文件） ⭐5 | Python |
| [`ClawPlugin`](https://github.com/sxkiss/ClawPlugin) | Claw 插件生态 ⭐4 | Python |
| [`HermesPlugin`](https://github.com/sxkiss/HermesPlugin) | Hermes 网关插件 ⭐1 | Python |
| [`wechat-observatory`](https://github.com/sxkiss/wechat-observatory) | LSPosed 微信网关观测器 ⭐7 | Go |
| [`WeChatPadPro`](https://github.com/sxkiss/WeChatPadPro) | 基于 WeChat Pad 的微信管理工具 | — |
| [`wx-filehelper-api`](https://github.com/sxkiss/wx-filehelper-api) | 基于文件传输助手网页版的 TG 协议兼容机器人框架 ⭐2 | Python |
| [`wx-filehelper`](https://github.com/sxkiss/wx-filehelper) | 微信文件传输助手网页版工具 ⭐2 | TypeScript |
| [`RevokeBotMessage`](https://github.com/sxkiss/RevokeBotMessage) | 机器人消息撤回处理 | Python |
| [`MessageForwarder`](https://github.com/sxkiss/MessageForwarder) | 多平台消息转发器 | Python |
| [`Bncr`](https://github.com/sxkiss/Bncr) | 无界 Bot 相关实践 ⭐1 | Python |

### 🧠 AI Agent 与协作平台

| 项目 | 简介 | 语言 |
|------|------|------|
| [`multi-agent`](https://github.com/sxkiss/multi-agent) | 分层 crew 协作的 Multi-Agent 平台 ⭐5 | Python |
| [`AgentChat`](https://github.com/sxkiss/AgentChat) | 多 Agent 对话协作 ⭐1 | — |
| [`all-to-agent`](https://github.com/sxkiss/all-to-agent) | 万物转 Agent 适配层 ⭐1 | — |
| [`agents`](https://github.com/sxkiss/agents) | 多宿主 Agent 插件市场（Claude Code / Codex / Cursor / OpenCode / Copilot） | — |
| [`MonkeyCode`](https://github.com/sxkiss/MonkeyCode) | 团队级 AI 编码平台 | TypeScript |
| [`gui-app-operator`](https://github.com/sxkiss/gui-app-operator) | AT-SPI GUI 操作技能（无需视觉/OCR） | Python |
| [`jev-chat-jarvis`](https://github.com/sxkiss/jev-chat-jarvis) | 手机端对话副驾：读屏给候选回复，非侵入不 hook | — |
| [`sense-assistant`](https://github.com/sxkiss/sense-assistant) | 端侧 AI 基础设施：手机算力转 OpenAPI 接口 | — |
| [`evolver`](https://github.com/sxkiss/evolver) | 自进化 Agent 协议（PCEC），可自写代码 | — |
| [`mem0`](https://github.com/sxkiss/mem0) | Agent 长期记忆服务实践 | Python |
| [`reverse-skill`](https://github.com/sxkiss/reverse-skill) | 逆向 / 授权渗透 / 安全研究技能路由包 | — |

### 🔌 模型 API 网关与代理

| 项目 | 简介 | 语言 |
|------|------|------|
| [`opencode-free-proxy`](https://github.com/sxkiss/opencode-free-proxy) | OpenCode 免费模型本地代理 ⭐1 | JavaScript |
| [`workbuddy2api`](https://github.com/sxkiss/workbuddy2api) | WorkBuddy CN 的 OpenAI 兼容反代（OAuth/多账号轮转/工具调用/流式） ⭐1 | Go |
| [`zcode-api`](https://github.com/sxkiss/zcode-api) | 转发到 bigmodel.cn / z.ai 的反向代理 | TypeScript |
| [`ds2api`](https://github.com/sxkiss/ds2api) | DeepSeek 客户端转 API · 多账号轮询 · Vercel/Docker 部署 | — |
| [`cursor-api`](https://github.com/sxkiss/cursor-api) | Cursor 能力 API 化 | — |
| [`cursor2api-go`](https://github.com/sxkiss/cursor2api-go) | Cursor 转 API（Go 实现） | — |
| [`HelloKimi`](https://github.com/sxkiss/HelloKimi) | Kimi 的 Cloudflare Worker 2API 层，OpenAI 协议兼容 | TypeScript |
| [`Qwen2API`](https://github.com/sxkiss/Qwen2API) | QwenLM 转 OpenAI 协议 | JavaScript |
| [`doubao-free-api-1`](https://github.com/sxkiss/doubao-free-api-1) | 豆包大模型逆向 API（强联网搜索） ⭐2 | — |
| [`jimeng-free-api-all`](https://github.com/sxkiss/jimeng-free-api-all) | 即梦文生图/图生图/视频生成 API 化 | — |
| [`TavilyProxyManager`](https://github.com/sxkiss/TavilyProxyManager) | 多 Key 汇聚的 Tavily 透明反代 + 用量面板 | — |
| [`ccload`](https://github.com/sxkiss/ccload) | 上游模型同步与渠道负载工具 | Go |
| [`GoProxy`](https://github.com/sxkiss/GoProxy) | 多源代理抓取 + 验证 + 质量分级的代理池 | — |

### 🛒 微信 / 闲鱼自动化

| 项目 | 简介 | 语言 |
|------|------|------|
| [`Ydisks-Xianyu-Helper`](https://github.com/sxkiss/Ydisks-Xianyu-Helper) | 闲鱼多账号自动发货 + 消息回复（Go + React） ⭐2 | Go |
| [`xianyu-super-butler`](https://github.com/sxkiss/xianyu-super-butler) | 闲鱼超级管家：自动回复 + 全量重构 UI | — |
| [`wx-cli`](https://github.com/sxkiss/wx-cli) | 微信 macOS 数据库解密与查询 | — |
| [`lubojl-extract`](https://github.com/sxkiss/lubojl-extract) | 安卓端逆向提取工具 | Smali |

### ☁️ Cloudflare 与边缘基建

| 项目 | 简介 | 语言 |
|------|------|------|
| [`edgetunnel`](https://github.com/sxkiss/edgetunnel) | edgetunnel 2.0 VLESS/Trojan 多功能面板 | JavaScript |
| [`cloud-mail`](https://github.com/sxkiss/cloud-mail) | 基于 Cloudflare 的邮箱服务 | — |
| [`cloudflare_temp_email`](https://github.com/sxkiss/cloudflare_temp_email) | 免费临时域名邮箱（附件 / IMAP / SMTP / TG Bot） | — |
| [`worker`](https://github.com/sxkiss/worker) | Worker 部署镜像 | Dockerfile |
| [`workerconsole`](https://github.com/sxkiss/workerconsole) | 本地 Cloudflare Workers 管理与部署控制台 | — |
| [`Tunnel`](https://github.com/sxkiss/Tunnel) | 内网穿透隧道 ⭐1 | Python |
| [`EasyTier`](https://github.com/sxkiss/EasyTier) | 去中心化 Mesh VPN（WireGuard） | — |

### 📱 Android / 端侧工具

| 项目 | 简介 | 语言 |
|------|------|------|
| [`Silk-Codec-Android`](https://github.com/sxkiss/Silk-Codec-Android) | Android 平台 Silk 音频编解码 | — |
| [`Kotlite-Android`](https://github.com/sxkiss/Kotlite-Android) | 基于 Kotlite 的 Android Kotlin 子集解释器 | — |
| [`LuaJIT-Android`](https://github.com/sxkiss/LuaJIT-Android) | Android 上的 LuaJIT 运行环境 | — |
| [`rikkahub`](https://github.com/sxkiss/rikkahub) | 支持多 LLM 提供商的 Android 客户端 | — |
| [`LSPilot-Docs`](https://github.com/sxkiss/LSPilot-Docs) | LSPilot 文档站 | — |
| [`pydoll-cf-waf-bypasser-skills`](https://github.com/sxkiss/pydoll-cf-waf-bypasser-skills) | 基于 pydoll 的 CF/WAF 人机校验绕过技能 | — |
| [`jdck-android`](https://github.com/sxkiss/jdck-android) | 京东 Cookie 获取（Android） | — |

### 🧰 其他工具

| 项目 | 简介 | 语言 |
|------|------|------|
| [`sxkiss`](https://github.com/sxkiss/sxkiss) | 个人主页与配置仓库 ⭐4 | Shell |
| [`vmqApk`](https://github.com/sxkiss/vmqApk) | V 免签监控端 | — |
| [`vmqphp`](https://github.com/sxkiss/vmqphp) | V 免签 PHP 版 | — |
| [`vfkphp`](https://github.com/sxkiss/vfkphp) | V 发卡 PHP 版 | — |
| [`ldc-shop`](https://github.com/sxkiss/ldc-shop) | Linux DO Credit 虚拟商品商店 | — |
| [`tgbot-verify`](https://github.com/sxkiss/tgbot-verify) | Telegram Bot 自动化身份认证 | — |
| [`Kiro-auto-register`](https://github.com/sxkiss/Kiro-auto-register) | Kiro 自动注册（邮箱验证码 + 多平台账号） | — |
| [`JDLogin`](https://github.com/sxkiss/JDLogin) | 京东登录态处理 | Python |
| [`DisasterWarning`](https://github.com/sxkiss/DisasterWarning) | 灾害预警推送 | Python |
| [`dify-for-dsl`](https://github.com/sxkiss/dify-for-dsl) | Dify 工作流 DSL 脚本合集 | — |
| [`bug`](https://github.com/sxkiss/bug) | TVBox 开源空壳 | — |
| [`artex-ko`](https://github.com/sxkiss/artex-ko) | ARTEX 韩语本地化（AI 自主渗透测试框架） | — |
| [`codespaces-blank`](https://github.com/sxkiss/codespaces-blank) | Codespaces 空白模板 | — |

---

## 📊 统计

- 公开仓库 **68** 个 · 关注者 **9** · 主语言 **Python**
- 语言分布（自建仓库）：`Python`×14 · `JavaScript`×4 · `Go`×4 · `TypeScript`×4 · `Shell`×1 · `Dockerfile`×1 · `Smali`×1
- 星标最高：`allbot` ⭐12 · `wechat-observatory` ⭐7 · `multi-agent` ⭐5 · `wechat-869-media-sender` ⭐5
- 近期活跃（2026 Q3–Q4）：`multi-agent` · `allbot` · `opencode-free-proxy` · `Ydisks-Xianyu-Helper` · `workbuddy2api` · `WeChatPadPro`

---

<div align="center">

_框架 ➜ Agent ➜ 基建 · 持续构建中_

</div>
