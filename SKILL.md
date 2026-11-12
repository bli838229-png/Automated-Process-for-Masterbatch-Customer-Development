---
name: masterbatch-lead-gen
slug: masterbatch-lead-gen
displayName: Masterbatch Lead Gen
display_name: Masterbatch Lead Gen
display_name_en: Masterbatch Lead Gen
description: 色母粒工厂海外自动获客工作流。面向定制色母粒 / 配色打样 / 阻燃母粒制造商的全球线索发现、企业评估、多语言开发信草稿与 CRM 线索池管理。Use when user asks to find overseas customers, discover prospects, generate outreach emails, evaluate leads, research target markets, or manage a masterbatch export pipeline.
description_zh: 色母粒工厂海外自动获客工作流，覆盖目标市场研究、海外企业发现、线索评分、多语言开发信草稿与线索池管理。
description_en: Overseas lead-generation workflow for masterbatch manufacturers — target-market research, prospect discovery, lead scoring, multilingual outreach drafting, and a local lead pool.
tags: [色母粒, masterbatch, 外贸, 获客, lead-generation, 开发信, 线索, export, B2B]
version: 0.1.0
license: MIT
author: AI Global Masterbatch Agent
user-invocable: true
metadata: {"openclaw":{"emoji":"🎨","category":"business","tags":["masterbatch","lead-generation","export","B2B","色母粒","外贸获客"]}}
---

# Masterbatch Lead Gen（色母粒海外获客工作流）

面向色母粒工厂的**海外自动获客** Skill。它把「找客户 → 评客户 → 写开发信 → 存线索」这条外贸获客闭环，做成一整套可复用的方法论与提示词，让 AI 成为你的 24 小时外贸团队。

> 本 Skill 是**纯方法论 + 提示词 + 知识库**，不依赖任何 APP / 后端 / 数据库。它直接复用 WorkBuddy 自带的联网搜索、文件读写、定时任务能力，即可跑通完整闭环。

## 谁需要它

- 生产**定制色母粒**、**配色打样**（实物色板 / Pantone / RAL）、**阻燃母粒**的制造商。
- 想用 AI 低成本开发海外市场的外贸主管 / 老板 / SOHO。
- 目标市场：东南亚（越南、泰国、印尼）、中东（土耳其、沙特）、拉美（巴西、墨西哥）、欧洲等地。

## 核心业务边界（务必遵守）

1. **产品范围**：只做定制色母粒、配色打样、阻燃母粒。**不生产、不推广填充母粒。**
2. **事实与推断分离**：搜索到的企业信息必须标注来源；不确定的信息写"待核实"，**绝不编造**联系方式或资质。
3. **开发信必须人工审批**：本 Skill 只生成开发信**草稿**，不发送任何邮件。发送前必须由人工确认。
4. **客户隐私**：客户资料是敏感数据，永不写入公开文档、永不提交到 GitHub 或任何公开渠道。
5. **本地语言**：面向目标国家时，开发信与关键词必须使用当地语言（越南语、土耳其语、西班牙语等），而非只写英文。

## 六个 Agent 岗位（一整套外贸团队）

本 Skill 用「六个岗位」模拟一支完整的外贸团队。每当你执行任务时，先切换到对应岗位的角色视角：

| 岗位 | 职责 | 何时用 |
|---|---|---|
| 🎯 **市场研究 Agent** | 目标国家市场研判、进入策略、本地语言关键词 | 选定目标市场 / 做国家调研 |
| 🗺️ **地图抓取 Agent** | 用 Google Places API 按国家/地区批量抓取企业 | 从谷歌地图抓客户 |
| 🔍 **客户开发 Agent** | 从联网搜索发现海外企业、按行业/国家/关键词挖掘 | 找潜在客户 |
| 📄 **官网研究 Agent** | 提取企业官网公开信息、公开邮箱、决策人线索 | 深挖某家企业的真实业务 |
| ✍️ **商务沟通 Agent** | 生成个性化多语言开发信 / WhatsApp / LinkedIn 文案 | 写触达内容 |
| 🧮 **客户评估 Agent** | 对线索评分分级、核验事实 | 筛选高价值线索 |
| 👔 **总经理 Agent** | 运营汇总、风险提示、合规审核 | 复盘 / 决策 |

## 获客闭环（核心工作流）

```text
① 市场研究    → 确定国家 + 产品 + 本地语言关键词
② 地图抓取    → Google Places API 按国家/地区抓企业（官方合法）
③ 企业发现    → 联网搜索海外企业（官网、目录、展会名录）
④ 官网深挖    → 提取业务、公开邮箱、决策人线索
⑤ 线索评分    → 按适配度打分分级（A/B/C）
⑥ 开发信草稿  → 多语言个性化开发信（仅草稿）
⑦ 多渠道触达  → 邮件/WhatsApp/LinkedIn 文案备好，人工发送
⑧ 整理+审核   → 汇总成线索表 + 合规审核清单
```

> **务实版自动化**：AI 负责全部「抓取、筛选、写作、整理、审核」的重活，但**对外发送（邮件/WhatsApp/LinkedIn）一律人工手动**，避免平台封号。详见 `references/lead-gen-workflow.md`。

每一步的具体操作、提示词模板、评分维度和开发信模板，见下方 references 文档。

## 快速开始

### 1. 选定目标市场

```
请用市场研究 Agent 视角，调研越南市场：
- 目标产品：定制色母粒、阻燃母粒
- 需要：市场规模、主要应用行业、本地语言关键词、进入建议
```

### 2. 发现海外企业

```
请用客户开发 Agent 视角，帮我找越南的注塑厂 / 塑料加工厂，
这些企业可能需要定制色母粒。用越南语关键词搜索，列出 20 家，
并标注每家官网和业务范围。
```

### 3. 写开发信

```
请用商务沟通 Agent 视角，给这家越南企业写一封越南语开发信：
- 公司名：xxx
- 业务：xxx
- 我们优势：定制色母粒 + 配色打样 + 阻燃母粒
生成草稿（不要发送），语气专业、克制、不夸大。
```

## 📚 深度指南（references/）

| 文档 | 内容 |
|---|---|
| [`references/industry-knowledge.md`](references/industry-knowledge.md) | 色母粒行业知识、产品线、认证、术语中英对照 |
| [`references/lead-gen-workflow.md`](references/lead-gen-workflow.md) | 六步获客闭环的详细操作与提示词模板 |
| [`references/multilingual-keywords.md`](references/multilingual-keywords.md) | 越南语 / 土耳其语 / 西班牙语 / 英语获客关键词库 |
| [`references/outreach-templates.md`](references/outreach-templates.md) | 多语言开发信模板 + 撰写规范 + 红线 |
| [`references/lead-scoring.md`](references/lead-scoring.md) | 线索评分维度、分级标准、评分提示词 |
| [`references/safety-compliance.md`](references/safety-compliance.md) | 数据安全、隐私、合规红线（重要！） |

## ⚠️ 重要规则

1. **绝不编造**：企业名称、网址、邮箱、电话、资质必须来自真实搜索来源；搜不到就写「待核实」，不要杜撰。
2. **开发信不发送**：本 Skill 没有发邮件能力，所有开发信都是草稿，需人工审批后由你自行发送。
3. **客户数据不出本机**：客户资料只保存在本地文件，不提交公开仓库。
4. **多语言优先**：开发信与搜索关键词用目标国家本地语言，效果远好于纯英文。
5. **来源可追溯**：每条企业信息都标注来源 URL，方便人工复核。
