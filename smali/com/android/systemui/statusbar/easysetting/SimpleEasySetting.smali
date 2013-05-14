.class public Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;
.super Ljava/lang/Object;
.source "SimpleEasySetting.java"


# instance fields
.field final POLICY_ALL:I

.field final POLICY_BT:I

.field final POLICY_DATA:I

.field final POLICY_GPS:I

.field final POLICY_NFC:I

.field final POLICY_TETHERING:I

.field final POLICY_WIFI:I

.field final TAG:Ljava/lang/String;

.field mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

.field mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mCarrier:I

.field mContext:Landroid/content/Context;

.field mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

.field private mDataOnOffEnabled:Z

.field mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

.field mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field private mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

.field mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field private mTitle:Landroid/widget/TextView;

.field mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

.field mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
    .locals 6
    .parameter "context"
    .parameter "ses"
    .parameter "manager"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_ALL:I

    .line 55
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_WIFI:I

    .line 56
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_TETHERING:I

    .line 57
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_DATA:I

    .line 58
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_BT:I

    .line 59
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_GPS:I

    .line 60
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->POLICY_NFC:I

    .line 63
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataOnOffEnabled:Z

    .line 65
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    .line 67
    const-string v1, "SimpleEasySetting"

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->TAG:Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;-><init>(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$2;-><init>(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->setManager(Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V

    .line 100
    const v1, 0x7f0c00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getSilentEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    const v1, 0x7f0c00c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getWifiEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    const v1, 0x7f0c00c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 114
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    const v1, 0x7f0c00c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getGpsEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    const v1, 0x7f0c00c9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getAutoRotationEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    const v1, 0x7f0c00c3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButton:Landroid/view/View;

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f0c00c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mTitle:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    .line 143
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    if-ne v1, v5, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->registerReceivers()V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->checkMdmPolicy(I)V

    return-void
.end method

.method private checkMdmPolicy(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 230
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public getMdmPolicyDisabled(I)Z
    .locals 3
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 294
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    :cond_0
    return v2
.end method

.method registerReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, filter:Landroid/content/IntentFilter;
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    if-ne v1, v2, :cond_0

    .line 208
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mCarrier:I

    if-ne v1, v2, :cond_1

    .line 213
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "change_mdm_policy_tethering"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "change_mdm_policy_data_network"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "com.android.bluetooth.action.UPDATE_BT_MDM_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "change_mdm_policy_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "change_mdm_policy_nfc"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method setManager(Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    .line 185
    return-void
.end method

.method public updateEnabled()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getWifiState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->getMdmPolicyDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getAirplaneModeState()I

    move-result v3

    if-eq v3, v1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setEnabled(Z)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(I)V

    .line 200
    return-void

    :cond_1
    move v0, v2

    .line 190
    goto :goto_0

    :cond_2
    move v1, v2

    .line 196
    goto :goto_1
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateResources()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mAutoRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->updateResource()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mSettingsButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method
