.class public Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field private isDebugMode:Z

.field mAlert:Landroid/app/AlertDialog;

.field mCarrier:I

.field mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifi_state_lock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 48
    const-string v2, "WifiEnabler"

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->TAG:Ljava/lang/String;

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    .line 61
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    const-string v2, "WifiEnabler"

    const-string v3, "Wifi start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mCarrier:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->checkWifiConfig()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->jumpToAPList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->checkMdmPolicy()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method private checkMdmPolicy()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method private checkWifiConfig()I
    .locals 7

    .prologue
    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 319
    .local v3, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 321
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 323
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WifiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 328
    .local v1, count:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 330
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 331
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    if-eqz v4, :cond_1

    .line 332
    const-string v4, "WifiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"T wifi zone_secure\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    if-eqz v4, :cond_2

    .line 336
    const-string v4, "WifiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 338
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    if-eqz v4, :cond_3

    .line 339
    const-string v4, "WifiList"

    const-string v5, "count minus : T wifi zone_secure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z

    if-eqz v4, :cond_4

    .line 345
    const-string v4, "WifiList"

    const-string v5, "######################"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v4, "WifiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List have : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v4, "WifiList"

    const-string v5, "######################"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_4
    return v1
.end method

.method private createHotspotOffDialog()V
    .locals 6

    .prologue
    .line 366
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Landroid/content/Context;)V

    .line 367
    .local v2, v:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const v5, 0x103030d

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$4;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    .local v0, b:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 394
    .local v1, kdg:Landroid/app/KeyguardManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 405
    check-cast v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;

    .end local v2           #v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;->setDialog(Landroid/app/AlertDialog;)V

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$6;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$7;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 418
    return-void

    .line 401
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private jumpToAPList()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 221
    .local v1, nCallingState:I
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getWifiState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v2, 0x3080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0           #mIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 236
    :cond_2
    const-string v2, "WifiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not show On Calling State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWifiEnabled(Z)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z

    .line 304
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 312
    return p1
.end method


# virtual methods
.method public bindQuickButton(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 446
    instance-of v1, p1, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v1, :cond_1

    .line 447
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 450
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 451
    .local v0, wifiState:I
    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->isEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setEnabled(Z)V

    .line 459
    .end local v0           #wifiState:I
    :cond_1
    return-void
.end method

.method public getMdmPolicyDisabled()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiState()I
    .locals 4

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, state:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 249
    .local v0, s:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 250
    const/4 v1, 0x1

    .line 257
    .end local v0           #s:I
    :cond_1
    :goto_0
    return v1

    .line 251
    .restart local v0       #s:I
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 252
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 193
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 194
    .local v2, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 195
    .local v0, enabling:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v4

    .line 196
    .local v1, newState:I
    :goto_1
    const-string v6, "WifiEnabler"

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

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, state:I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiState(I)I

    move-result v3

    .line 199
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 201
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->showProgress()V

    .line 207
    :goto_2
    return-void

    .end local v0           #enabling:Z
    .end local v1           #newState:I
    .end local v3           #state:I
    :cond_0
    move v0, v5

    .line 194
    goto :goto_0

    .restart local v0       #enabling:Z
    :cond_1
    move v1, v5

    .line 195
    goto :goto_1

    .line 205
    .restart local v1       #newState:I
    .restart local v3       #state:I
    :cond_2
    if-ne v3, v4, :cond_3

    :goto_3
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method public setWifiState(I)I
    .locals 8
    .parameter "newState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getWifiState()I

    move-result v0

    .line 262
    .local v0, currentState:I
    if-eq v0, v6, :cond_0

    if-ne v0, p1, :cond_1

    .line 298
    .end local v0           #currentState:I
    :cond_0
    :goto_0
    return v0

    .line 268
    .restart local v0       #currentState:I
    :cond_1
    if-ne p1, v4, :cond_4

    move v1, v4

    .line 270
    .local v1, enabling:Z
    :goto_1
    const/4 v2, 0x0

    .line 271
    .local v2, succeeded:Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_3

    .line 273
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z

    if-nez v7, :cond_3

    .line 276
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 277
    .local v3, wifiApState:I
    if-eqz v1, :cond_6

    const/16 v7, 0xc

    if-eq v3, v7, :cond_2

    const/16 v7, 0xd

    if-ne v3, v7, :cond_6

    .line 280
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mCarrier:I

    if-ne v7, v4, :cond_5

    .line 282
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 283
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiEnabled(Z)Z

    move-result v2

    .line 298
    .end local v3           #wifiApState:I
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    move v0, v6

    goto :goto_0

    .end local v1           #enabling:Z
    .end local v2           #succeeded:Z
    :cond_4
    move v1, v5

    .line 268
    goto :goto_1

    .line 287
    .restart local v1       #enabling:Z
    .restart local v2       #succeeded:Z
    .restart local v3       #wifiApState:I
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->createHotspotOffDialog()V

    goto :goto_2

    .line 294
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiEnabled(Z)Z

    move-result v2

    goto :goto_2
.end method
