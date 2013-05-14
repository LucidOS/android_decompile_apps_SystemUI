.class public Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 23
    const-string v1, "BluetoothEnabler"

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->TAG:Ljava/lang/String;

    .line 88
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    const-string v1, "BluetoothEnabler"

    const-string v2, "BluetoothEnabler start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->checkMdmPolicy()V

    return-void
.end method

.method private checkMdmPolicy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method public getBtState()I
    .locals 3

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, state:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 142
    .local v0, s:I
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 143
    const/4 v1, 0x1

    .line 150
    .end local v0           #s:I
    :cond_1
    :goto_0
    return v1

    .line 144
    .restart local v0       #s:I
    :cond_2
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 145
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getMdmPolicyDisabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 117
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 118
    .local v2, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v6, "BluetoothEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 120
    .local v0, enabling:Z
    :goto_0
    const/4 v3, 0x0

    .line 121
    .local v3, state:I
    if-eqz v0, :cond_1

    move v1, v4

    .line 122
    .local v1, newState:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->setBtState(I)I

    move-result v3

    .line 123
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 125
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->showProgress()V

    .line 131
    :goto_2
    return-void

    .end local v0           #enabling:Z
    .end local v1           #newState:I
    .end local v3           #state:I
    :cond_0
    move v0, v5

    .line 119
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v3       #state:I
    :cond_1
    move v1, v5

    .line 121
    goto :goto_1

    .line 129
    .restart local v1       #newState:I
    :cond_2
    if-ne v3, v4, :cond_3

    :goto_3
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method public setBtState(I)I
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->getBtState()I

    move-result v0

    .line 156
    .local v0, currentState:I
    if-eq v0, v3, :cond_0

    if-ne v0, p1, :cond_1

    .line 165
    .end local v0           #currentState:I
    :cond_0
    :goto_0
    return v0

    .line 159
    .restart local v0       #currentState:I
    :cond_1
    if-ne p1, v1, :cond_3

    .line 161
    .local v1, enabling:Z
    :goto_1
    const/4 v2, 0x0

    .line 162
    .local v2, succeeded:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_2

    .line 163
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 165
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    move v0, v3

    goto :goto_0

    .line 159
    .end local v1           #enabling:Z
    .end local v2           #succeeded:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 163
    .restart local v1       #enabling:Z
    .restart local v2       #succeeded:Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    goto :goto_2
.end method
