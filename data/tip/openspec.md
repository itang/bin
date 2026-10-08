# Openspec

## Usage

| 阶段  | 工具 | 产出 |
|------|------|------|
|理清需求| /opsx:explore "xxx" |	明确的设计方向|
|定义功能 |/opsx:propose <change> |proposal + specs + design + tasks |
|确认设计|人工审阅|确认过的规范文件|
|校验|openspec validate <change> --strict; openspec validate --strict | 校验spec文件格式 | 
|逐步实现|/opsx:apply|通过测试的代码|
|完成归档|/opsx:archive|已合并的规范|
