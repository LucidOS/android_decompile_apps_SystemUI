.class public Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "MotionRecognitionEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mMotionButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;

    .line 23
    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mMotionButton:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 24
    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mCursor:Landroid/database/Cursor;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "motion_recognization_enable"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mCursor:Landroid/database/Cursor;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_recognization_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 72
    .local v0, state:Z
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 59
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v5, "MotionRecognitionEnabler"

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

    .line 60
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 61
    .local v0, enabling:Z
    :goto_0
    const/4 v2, 0x0

    .line 62
    .local v2, state:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->setEnabled(Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->boolToState(Z)I

    move-result v2

    .line 63
    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 64
    return-void

    .end local v0           #enabling:Z
    .end local v2           #state:I
    :cond_0
    move v0, v4

    .line 60
    goto :goto_0

    .restart local v0       #enabling:Z
    .restart local v2       #state:I
    :cond_1
    move v3, v4

    .line 63
    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 2
    .parameter "enabling"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->getEnabled()Z

    move-result v0

    .line 80
    .local v0, currentState:Z
    if-ne v0, p1, :cond_0

    .line 97
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 84
    .restart local v0       #currentState:Z
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, p1

    .line 97
    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->getEnabled()Z

    move-result v0

    .line 50
    .local v0, enabled:Z
    const-string v1, "MotionRecognitionEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->completeProgress()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->buttonSetOn(Z)V

    .line 53
    return-void
.end method
