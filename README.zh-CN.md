# Masterbatch Lead Gen 🎨 色母粒海外获客

一个面向**色母粒行业**的海外获客 AI Skill。它把「找客户 → 评客户 → 写开发信 → 存线索」这条外贸获客闭环，做成一整套可复用的方法论 + 提示词库，让你的 AI 助手变成一支 24 小时在线的外贸团队。

> **这是一个方法论 + 提示词 + 知识库 Skill，不是一个 App。** 它可以运行在任何支持 Skill 的 AI 助手（WorkBuddy、Claude、Cursor 等）里，直接复用助手自带的联网搜索、文件读写、定时任务能力——无需后端、数据库或桌面应用。

🌐 **语言**：[English](README.md) · [简体中文](README.zh-CN.md) · [Tiếng Việt](README.vi.md) · [Türkçe](README.tr.md) · [Español](README.es.md)

## 适合谁？

生产以下产品的制造商：
- **定制色母粒**（按树脂、颜色、工艺定制）
- **配色打样**（实物色板 / Pantone / RAL）
- **阻燃母粒**（独立产品线）

目标市场：东南亚（越南、泰国、印尼）、中东（土耳其、沙特）、拉美（巴西、墨西哥）、欧洲等。

## 它能做什么

完整的获客闭环，拆解为 7 个 Agent 岗位：

| 岗位 | 职责 |
|---|---|
| 🎯 市场研究 Agent | 国家研判、进入策略、本地语言关键词 |
| 🗺️ 地图抓取 Agent | 用 Google Places API 按国家抓取企业 |
| 🔍 客户开发 Agent | 联网搜索发现海外企业 |
| 📄 官网研究 Agent | 提取公开信息、邮箱、决策人线索 |
| ✍️ 商务沟通 Agent | 生成多语言邮件 / WhatsApp / LinkedIn 文案 |
| 🧮 客户评估 Agent | 评分分级（A/B/C） |
| 👔 总经理 Agent | 汇总、风险提示、合规审核 |

```
① 市场研究 → ② 地图抓取 → ③ 企业发现 → ④ 官网深挖
  → ⑤ 线索评分 → ⑥ 开发信草稿 → ⑦ 多渠道触达 → ⑧ 整理审核
```

> **务实自动化**：AI 负责全部"抓取、筛选、写作、整理、审核"的重活，但**对外发送（邮件/WhatsApp/LinkedIn）一律人工手动**，避免平台封号。

## 快速开始

1. **安装** Skill（见下方[安装](#安装)）。
2. 跑一次完整闭环：

```
请帮我执行一次完整的色母粒海外获客闭环：
目标市场：越南，产品：定制色母粒 + 阻燃母粒。
1. 市场研究：越南市场概况 + 本地关键词
2. 企业发现：找 20 家越南塑料加工企业
3. 线索评分：打分分级（A/B/C）
4. 开发信：为 A 级 5 家写越南语邮件草稿
5. 汇总：整理成本地 CSV 线索表
```

## 安装

### WorkBuddy（推荐）

```bash
git clone https://github.com/<your-org>/masterbatch-lead-gen.git
cp -r masterbatch-lead-gen ~/.workbuddy/skills/masterbatch-lead-gen
```

然后在 WorkBuddy 里说：*"用色母粒获客 skill 帮我找越南客户"*。

### Claude Desktop / Cursor / 其他助手

把 `SKILL.md` 和 `references/` 复制到你的助手 skills 目录，或直接把 `SKILL.md` 内容粘贴到对话中作为指令。

### 一键安装脚本

```bash
curl -fsSL https://raw.githubusercontent.com/<your-org>/masterbatch-lead-gen/main/install.sh | bash
```

## 目录结构

```
SKILL.md                          # Skill 入口：岗位、闭环、安全红线
README.md                         # 英文说明（主）
README.zh-CN.md / README.vi.md / README.tr.md / README.es.md
references/
  industry-knowledge.md           # 色母粒行业知识 & 术语对照
  lead-gen-workflow.md            # 完整流程 + 提示词模板
  multilingual-keywords.md        # 越/土/西/英 搜索关键词
  outreach-templates.md           # 多语言开发信模板
  lead-scoring.md                 # 评分维度 & 分级
  safety-compliance.md            # 隐私、事实、合规红线
examples/
  lead-pool-template.csv          # 线索池 CSV 模板
  usage-examples.md               # 可直接复制的提示词
install.sh                        # 一键安装脚本
CONTRIBUTING.md · CODE_OF_CONDUCT.md · SECURITY.md · LICENSE
```

## 安全红线（不可妥协）

- **绝不编造**企业名称、网址、邮箱、资质。
- **对外发送绝不自动化** —— 邮件、WhatsApp、LinkedIn 均由人工发送，AI 只备内容。
- **不用非官方 WhatsApp 自动化 / LinkedIn 抓取**（会封号）。
- **客户数据留在本地**，绝不提交公开仓库。
- **本地语言优先** —— 触达与关键词用客户母语。

## 贡献

欢迎贡献，尤其是新增语言和开发信模板。详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 许可证

[MIT](LICENSE)
