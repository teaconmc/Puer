# title: common_functions
# author: qyl27

// 导入外部函数
EXTERNAL setAutoContinue(value)
EXTERNAL setAutoContinueSpeed(speed)
EXTERNAL putVariable(name, value)
EXTERNAL hideContinue(isHide)
EXTERNAL getVariable(name)
EXTERNAL hasItemStack(tag)
EXTERNAL giveItemStack(tag)
EXTERNAL takeItemStack(tag)
EXTERNAL getPlayerName()

// 外部函数的占位符
//（可选，本来是用来给设计器里面的预览用的，后来外部函数太多了，设计器里面的预览已经基本上不支持了）
=== function putVariable(name, value) ===
    ~ return false
    
=== function hideContinue(isHide) ===
    ~ return false
    
=== function getVariable(name) ===
    ~ return false
