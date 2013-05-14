.class public Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCarrier:I

.field mContext:Landroid/content/Context;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    .line 26
    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 30
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mCarrier:I

    .line 36
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    .line 111
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mCarrier:I

    .line 118
    const-string v2, "NfcEnabler"

    const-string v3, "NfcEnabler start"

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->checkMdmPolicy()V

    return-void
.end method

.method private checkMdmPolicy()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 5

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, state:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled_RWP2P()Z

    move-result v0

    .line 149
    .local v0, enabled:Z
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v0, :cond_1

    .line 151
    const/4 v1, 0x1

    .line 160
    .end local v0           #enabled:Z
    :goto_0
    return v1

    .line 153
    .restart local v0       #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 158
    .end local v0           #enabled:Z
    :cond_2
    const-string v2, "NfcEnabler"

    const-string v3, "getEnabled :: Adapter is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMdmPolicyDisabled()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 132
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v5, "NfcEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 134
    .local v0, enabling:Z
    :goto_0
    const/4 v2, 0x0

    .line 135
    .local v2, state:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->boolToState(Z)I

    move-result v2

    .line 136
    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 137
    return-void

    .end local v0           #enabling:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 133
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v2       #state:I
    :cond_1
    move v3, v4

    .line 136
    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 7
    .parameter "enabling"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->getEnabled()Z

    move-result v0

    .line 167
    .local v0, currentState:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 168
    .local v2, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-ne v0, p1, :cond_0

    .line 204
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 171
    .restart local v0       #currentState:Z
    :cond_0
    const/4 v3, 0x0

    .line 172
    .local v3, succeeded:Z
    if-eqz v2, :cond_7

    .line 173
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled_Nfc()Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 175
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v3

    .line 198
    :cond_1
    :goto_1
    const-string v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set nfc enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v0, v3

    .line 204
    goto :goto_0

    .line 178
    :cond_2
    const-string v4, "NfcEnabler"

    const-string v5, "disabled, but request disable state :("

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_3
    if-eqz p1, :cond_6

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable_RWP2P()Z

    move-result v3

    .line 183
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mCarrier:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 187
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v4, :cond_5

    .line 188
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapse()V

    .line 190
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, disableRwP2p:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 182
    .end local v1           #disableRwP2p:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable_RWP2P()Z

    move-result v3

    goto :goto_3

    .line 202
    :cond_7
    const-string v4, "NfcEnabler"

    const-string v5, "setEnabled :: Adapter is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
