.class public Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;
.super Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.source "SilentEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field final mEasySettingState:[I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final mSilentMode:[I

.field final mTitle:[I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x3

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;-><init>()V

    .line 23
    const-string v1, "SilentEnabler"

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->TAG:Ljava/lang/String;

    .line 24
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mTitle:[I

    .line 25
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mSilentMode:[I

    .line 28
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mEasySettingState:[I

    .line 48
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler$1;-><init>(Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    const-string v1, "SilentEnabler"

    const-string v2, "SilentEnabler start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 24
    nop

    :array_0
    .array-data 0x4
        0xb4t 0x0t 0x9t 0x7ft
        0xb2t 0x0t 0x9t 0x7ft
        0xb3t 0x0t 0x9t 0x7ft
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getState()I
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, state:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mEasySettingState:[I

    aget v1, v1, v0

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 102
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 103
    .local v1, onOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    const-string v3, "SilentEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", next state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->nextState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", silent mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mSilentMode:[I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->nextState()I

    move-result v6

    rem-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->nextState()I

    move-result v0

    .line 105
    .local v0, enabling:I
    const/4 v2, 0x0

    .line 106
    .local v2, state:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mSilentMode:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mVibrator:Landroid/os/Vibrator;

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 112
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->setState(I)I

    move-result v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(I)V

    .line 114
    return-void
.end method

.method public setState(I)I
    .locals 5
    .parameter "enabling"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->getState()I

    move-result v0

    .line 88
    .local v0, currentState:I
    if-ne v0, p1, :cond_0

    .line 96
    .end local v0           #currentState:I
    :goto_0
    return v0

    .line 91
    .restart local v0       #currentState:I
    :cond_0
    move v1, v0

    .line 92
    .local v1, result:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mSilentMode:[I

    rem-int/lit8 v4, p1, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 94
    move v1, p1

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public updateResource()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->getState()I

    move-result v0

    .line 119
    .local v0, easysettingState:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->mTitle:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->buttonSetState(ILjava/lang/CharSequence;)V

    .line 120
    return-void
.end method
