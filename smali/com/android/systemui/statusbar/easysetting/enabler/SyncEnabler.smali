.class public Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "SyncEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


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

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 28
    const-string v0, "SyncEnabler"

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "background_data"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mCursor:Landroid/database/Cursor;

    .line 43
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "com.pantech.intent.action.AUTO_SYNC_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v0, "com.pantech.intent.action.AUTO_SYNC_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 97
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 98
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v5, "SyncEnabler"

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

    .line 99
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 100
    .local v0, enabling:Z
    :goto_0
    const/4 v2, 0x0

    .line 101
    .local v2, state:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->boolToState(Z)I

    move-result v2

    .line 102
    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 104
    return-void

    .end local v0           #enabling:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 99
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v2       #state:I
    :cond_1
    move v3, v4

    .line 102
    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 2
    .parameter "enabling"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->getEnabled()Z

    move-result v0

    .line 117
    .local v0, currentState:Z
    if-ne v0, p1, :cond_0

    .line 127
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 120
    .restart local v0       #currentState:Z
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$2;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, p1

    .line 127
    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->getEnabled()Z

    move-result v0

    .line 134
    .local v0, syncEnabled:Z
    const-string v1, "SyncEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->completeProgress()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->buttonSetOn(Z)V

    .line 138
    return-void
.end method
