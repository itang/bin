# Openspec

## Usage

| 阶段  | 工具 | 产出 |
|------|------|------|
|理清需求| /opsx:explore "xxx" |	明确的设计方向|
|定义功能 |/opsx:propose <change> |proposal + specs + design + tasks |
|确认设计|人工审阅|确认过的规范文件|
|校验|openspec validate <change> --strict; openspec validate --strict | 校验spec文件格式 | 
|逐步实现|/opsx:apply|通过测试的代码|
|审| /opsx:verify add-async-validation| 拿 design.md 审代码 |
|完成归档|/opsx:archive|已合并的规范|


### 场景 A：改的是任务粒度（需求没变，只是拆分不合理）

最轻的情况，直接改 tasks.md：
```
# 编辑 tasks.md：重排 / 拆细 / 追加步骤
openspec validate add-conditional-visibility --strict
/opsx:apply add-conditional-visibility
```

### 场景 B：改的是需求本身（最常见，也最危险）
```
# 1. 改 specs/<capability>/spec.md 的 delta（MODIFIED 要给完整更新后内容）
# 2. 改 proposal.md 的 Why/What/Impact
# 3. 改 design.md 的技术方案
# 4. 【关键】让 AI 重新对齐 tasks.md：
#    "逐条比对 specs 里的每个 Requirement 和 Scenario，
#     更新 tasks.md：删除已失效的任务、追加新需求对应的任务、
#     把已勾选但实现与新规范冲突的任务改回 - [ ] 并在描述里标注需返工"
openspec validate add-conditional-visibility --strict
/opsx:apply add-conditional-visibility
```

### 场景 C：方向性变更（等于换了个需求）

别在当前 change 里硬改，会污染变更历史。开一个新的、动词开头的 follow-up change：

```
openspec new change update-conditional-visibility-eval-order
# 或 /opsx:propose
# 走完整一轮 delta → validate --strict → apply
```

