.class public Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "GpsEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 26
    const-string v0, "GpsEnabler"

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->TAG:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mCursor:Landroid/database/Cursor;

    .line 81
    return-void
.end method

.method private checkMdmPolicy()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 3

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 126
    .local v0, gpsEnabled:Z
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 128
    return v0
.end method

.method public getMdmPolicyDisabled()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 102
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v5, "GpsEnabler"

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

    .line 103
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 104
    .local v0, enabling:Z
    :goto_0
    const/4 v2, 0x0

    .line 105
    .local v2, state:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->boolToState(Z)I

    move-result v2

    .line 106
    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 108
    return-void

    .end local v0           #enabling:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 103
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v2       #state:I
    :cond_1
    move v3, v4

    .line 106
    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 2
    .parameter "enabling"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getEnabled()Z

    move-result v0

    .line 133
    .local v0, currentState:Z
    if-ne v0, p1, :cond_0

    .line 145
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 136
    .restart local v0       #currentState:Z
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, p1

    .line 145
    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getEnabled()Z

    move-result v0

    .line 114
    .local v0, gpsEnabled:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getMdmPolicyDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->completeProgress()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->buttonSetOn(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->checkMdmPolicy()V

    .line 120
    :cond_0
    return-void
.end method
