.class public Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "DataEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field private iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

.field private isDebugMode:Z

.field private mCarrier:I

.field mContext:Landroid/content/Context;

.field mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field private mDataOnOffEnabled:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingEnabled:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 36
    const-string v2, "DataEnabler"

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    .line 59
    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    .line 60
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataOnOffEnabled:Z

    .line 67
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 149
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    .line 80
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.skt.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v2, "com.skt.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "com.skt.intent.action.ROAMING_DATA_MENU_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "com.skt.intent.action.ROAMING_DATA_MENU_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 104
    const-string v2, "com.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "com.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    const-string v2, "DataEnabler"

    const-string v3, "DataEnabler start"

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V
    .locals 4
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 36
    const-string v2, "DataEnabler"

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    .line 59
    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    .line 60
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataOnOffEnabled:Z

    .line 67
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 149
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.skt.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "com.skt.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v2, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v2, "com.skt.intent.action.ROAMING_DATA_MENU_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v2, "com.skt.intent.action.ROAMING_DATA_MENU_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 142
    const-string v2, "com.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "com.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    const-string v2, "DataEnabler"

    const-string v3, "DataEnabler start"

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabledMdmCheck(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabledMdmCheckByAirplaneMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateRoamingEnabledMdmCheck(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateRoamingUsage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->checkMdmPolicy()V

    return-void
.end method

.method private checkMdmPolicy()V
    .locals 2

    .prologue
    .line 596
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 613
    :cond_0
    return-void
.end method

.method private updateEnabled(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.skt.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v1, :cond_1

    .line 451
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but data romaing enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 454
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 455
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v1, :cond_3

    .line 460
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but data romaing enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 464
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEnabledByAirplaneMode(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const-string v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 543
    .local v0, state:Z
    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->setButtonEnabled(Z)V

    .line 556
    .end local v0           #state:Z
    :goto_1
    return-void

    .restart local v0       #state:Z
    :cond_0
    move v1, v2

    .line 543
    goto :goto_0

    .line 545
    .end local v0           #state:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getAirplaneModeState()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 548
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->setButtonEnabled(Z)V

    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->setButtonEnabled(Z)V

    goto :goto_1
.end method

.method private updateEnabledMdmCheck(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getMdmPolicyDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabled(Landroid/content/Intent;)V

    .line 473
    :cond_0
    return-void
.end method

.method private updateEnabledMdmCheckByAirplaneMode(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getMdmPolicyDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabledByAirplaneMode(Landroid/content/Intent;)V

    .line 562
    :cond_0
    return-void
.end method

.method private updateRoamingEnabled(Landroid/content/Intent;)V
    .locals 3
    .parameter "i"

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v1, :cond_1

    .line 481
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 482
    const-string v1, "DataEnabler"

    const-string v2, "data roaming on"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v1, "DataEnabler"

    const-string v2, "data roaming on, but data roaming disabled"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_2
    const-string v1, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v1, :cond_3

    .line 491
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 492
    const-string v1, "DataEnabler"

    const-string v2, "data roaming off"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_3
    const-string v1, "DataEnabler"

    const-string v2, "data roaming off, but data roaming disabled"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRoamingEnabledMdmCheck(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getMdmPolicyDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateRoamingEnabled(Landroid/content/Intent;)V

    .line 509
    :cond_0
    return-void
.end method

.method private updateRoamingUsage(Landroid/content/Intent;)V
    .locals 3
    .parameter "i"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.skt.intent.action.ROAMING_DATA_MENU_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    .line 516
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->RoamingOnOff_visible(Z)V

    .line 517
    const-string v1, "DataEnabler"

    const-string v2, "Roaming menu enabled"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const-string v1, "com.skt.intent.action.ROAMING_DATA_MENU_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    .line 521
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->RoamingOnOff_visible(Z)V

    .line 522
    const-string v1, "DataEnabler"

    const-string v2, "Roaming menu disabled"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public RoamingOnOff_visible(Z)V
    .locals 3
    .parameter "vis"

    .prologue
    .line 418
    const-string v0, "DataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoamingOnOff_visible _____________ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz p1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getRoamingEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->buttonSetOn(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mDataButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dismissKeyguard()V
    .locals 1

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAirplaneModeState()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, state:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 230
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v3

    .line 227
    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 235
    const/4 v1, 0x1

    .line 238
    .local v1, isDataEnabled:Z
    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-ne v5, v3, :cond_3

    .line 239
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 248
    :cond_0
    :goto_0
    const-string v3, "iskydataconnection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    invoke-interface {v3}, Lcom/android/internal/telephony/ISkyDataConnection;->getDataConnectionMode()Z

    move-result v1

    .line 254
    :cond_1
    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlwaysOnSetting : getEnabled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_1
    return v1

    :cond_2
    move v1, v4

    .line 239
    goto :goto_0

    .line 243
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 244
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_data_network_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    move v1, v3

    .line 245
    :goto_2
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v4

    .line 244
    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlwaysOnSettings resume failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 260
    .local v2, ne:Ljava/lang/NullPointerException;
    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlwaysOnSettings resume failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMdmPolicyDisabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 634
    :cond_0
    return v2
.end method

.method public getRoamingEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 329
    const/4 v1, 0x1

    .line 330
    .local v1, isDataEnabled:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 331
    :goto_0
    const-string v3, "iskydataconnection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    invoke-interface {v3}, Lcom/android/internal/telephony/ISkyDataConnection;->getDataRoamingEnabled()Z

    move-result v1

    .line 335
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataRoamingEnabled : getEnabled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :goto_1
    return v1

    .line 330
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataRoamingEnabled resume failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 341
    .local v2, ne:Ljava/lang/NullPointerException;
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataRoamingEnabled resume failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 191
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 192
    .local v2, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 193
    .local v0, enabling:Z
    :goto_0
    const/4 v3, 0x0

    .line 195
    .local v3, state:I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v5, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->setRoamingEnabled(Z)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->boolToState(Z)I

    move-result v3

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 192
    .end local v0           #enabling:Z
    .end local v3           #state:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    .restart local v0       #enabling:Z
    .restart local v3       #state:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->boolToState(Z)I

    move-result v3

    .line 202
    if-ne v3, v4, :cond_3

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.skt.intent.action.ALWAYS_ON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    if-nez v3, :cond_0

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.skt.intent.action.ALWAYS_OFF"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 9
    .parameter "enabling"

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    const-string v3, "iskydataconnection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 277
    if-eqz p1, :cond_3

    .line 279
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-eq v3, v7, :cond_1

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, defineIntent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.statusbar.easysetting.AlwaysOnPopup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v3, "OnOff_flags"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 292
    .end local v0           #defineIntent:Landroid/content/Intent;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataConnectionMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    :goto_0
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlwaysOnSetting : : setEnabled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return p1

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile data operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-eq v3, v7, :cond_4

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v0       #defineIntent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.statusbar.easysetting.AlwaysOnPopup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v3, "OnOff_flags"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    .end local v0           #defineIntent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    if-eqz v3, :cond_5

    const-string v3, "EasySetting"

    const-string v4, "request deactive PDPContext "

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataConnectionMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, e:Landroid/os/RemoteException;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile data operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 318
    .local v2, ne:Ljava/lang/NullPointerException;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->isDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, "EasySetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile data operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRoamingEnabled(Z)Z
    .locals 8
    .parameter "enabling"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 350
    const-string v3, "iskydataconnection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 357
    :cond_0
    if-eqz p1, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->dismissKeyguard()V

    .line 360
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, defineIntent:Landroid/content/Intent;
    const/high16 v3, 0x3480

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 365
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-ne v3, v7, :cond_2

    .line 366
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.statusbar.easysetting.RoamingDataPopupLGU"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v3, "OnOff_flags"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 401
    .end local v0           #defineIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataOnRoamingEnabledUI : : setEnabled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return p1

    .line 370
    .restart local v0       #defineIntent:Landroid/content/Intent;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-ne v3, v5, :cond_1

    .line 371
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.statusbar.easysetting.RoamingDataPopup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v3, "OnOff_flags"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    .end local v0           #defineIntent:Landroid/content/Intent;
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataOnRoamingEnabledUI(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mCarrier:I

    if-ne v3, v7, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 390
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataOnRoamingEnabled operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateEnabled()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getRoamingEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public updateResources()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mRoamingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
