.class public Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "AutoAnswerEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 24
    const-string v0, "AutoAnswerEnabler"

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mCursor:Landroid/database/Cursor;

    .line 36
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v0, "com.pantech.autoanswer.set"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 4

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 86
    .local v1, state:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_answer"

    invoke-static {v2, v3}, Lcom/pantech/providers/skysettings/SKYSystem;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EasySetting"

    const-string v3, "Not Found Settings on GetAaEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 72
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v5, "AutoAnswerEnabler"

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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 74
    .local v0, enabling:Z
    :goto_0
    const/4 v2, 0x0

    .line 75
    .local v2, state:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->boolToState(Z)I

    move-result v2

    .line 76
    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 78
    return-void

    .end local v0           #enabling:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 73
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v2       #state:I
    :cond_1
    move v3, v4

    .line 76
    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 5
    .parameter "enabling"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->getEnabled()Z

    move-result v0

    .line 102
    .local v0, currentState:Z
    if-ne v0, p1, :cond_0

    .line 116
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 108
    .restart local v0       #currentState:Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_answer"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/pantech/providers/skysettings/SKYSystem;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.autoanswer.set"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "autoSet"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, p1

    .line 116
    goto :goto_0

    .line 108
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
