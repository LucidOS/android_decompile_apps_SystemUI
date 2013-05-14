.class public Lcom/android/systemui/statusbar/easysetting/EasySettingMain;
.super Ljava/lang/Object;
.source "EasySettingMain.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;
.implements Lcom/android/systemui/statusbar/easysetting/ModeChanger;


# instance fields
.field private final EASYSETTING:I

.field private final QUICKSETTING:I

.field private final SIMPLE_HOME:Ljava/lang/String;

.field easySettingView:Landroid/view/View;

.field private isEditMode:Z

.field mContext:Landroid/content/Context;

.field mCurrentTab:I

.field private mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

.field private mEasySettingTab:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

.field mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSimpleEasySettingPort:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

.field mSimpleEasySettingView:Landroid/view/View;

.field mSimpleModeChecker:Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;

.field simpleEasySettingViewLand:Landroid/view/View;

.field simpleEasySettingViewPort:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "es"
    .parameter "sesLand"
    .parameter "sesPort"

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, "com.pantech.simplehome"

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->SIMPLE_HOME:Ljava/lang/String;

    .line 37
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->QUICKSETTING:I

    .line 38
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->EASYSETTING:I

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->isEditMode:Z

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mPm:Landroid/content/pm/PackageManager;

    .line 53
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->easySettingView:Landroid/view/View;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewPort:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewLand:Landroid/view/View;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleEasySettingView:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->easySettingView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/EasySetting;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    .line 61
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    const v3, 0x7f0c006b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    .line 63
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewPort:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleEasySettingPort:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setModeChanger(Lcom/android/systemui/statusbar/easysetting/ModeChanger;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->setModeChanger(Lcom/android/systemui/statusbar/easysetting/ModeChanger;)V

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0056

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySettingTab:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    .line 70
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleModeChecker:Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mCurrentTab:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)Lcom/android/systemui/statusbar/easysetting/EasySetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    return-object v0
.end method


# virtual methods
.method public changeToSimple()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleModeChecker:Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->updateResources()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->easySettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewPort:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->easySettingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public easySettingTab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->visible(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->visible(Z)V

    .line 101
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mCurrentTab:I

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->setDefaultPage()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->onFinishEditMode()V

    .line 107
    return-void
.end method

.method public onEditMode()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->isEditMode:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->isEditMode:Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->changeModeToEdit()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->changeModeToEdit()V

    .line 118
    :cond_0
    return-void
.end method

.method public onFinishEditMode()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->isEditMode:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->isEditMode:Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->changeModeNormal()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->changeModeNormal()V

    .line 128
    :cond_0
    return-void
.end method

.method public quickSettingTab()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->visible(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->visible(Z)V

    .line 89
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mCurrentTab:I

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->setDefaultPage()V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->onFinishEditMode()V

    .line 94
    return-void
.end method

.method public setDefaultPage()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setDefaultPage()V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->setDefaultPage()V

    .line 234
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleModeChecker:Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/SimpleModeChecker;->isSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 172
    .local v0, rotation:I
    const-string v1, "JY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateResource :: config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleEasySettingPort:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->updateResources()V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewPort:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleEasySettingView:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->simpleEasySettingViewPort:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .end local v0           #rotation:I
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->updateResources()V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mQuickSetting:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->updateResources()V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySettingTab:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->updateResources()V

    goto :goto_0
.end method
