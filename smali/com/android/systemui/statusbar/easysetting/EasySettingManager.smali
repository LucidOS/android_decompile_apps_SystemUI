.class public Lcom/android/systemui/statusbar/easysetting/EasySettingManager;
.super Ljava/lang/Object;
.source "EasySettingManager.java"


# instance fields
.field mAutoAnswerEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;

.field mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

.field mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

.field private mContentQueryMapMotion:Landroid/content/ContentQueryMap;

.field private mContentQueryMapSecure:Landroid/content/ContentQueryMap;

.field private mContentQueryMapSync:Landroid/content/ContentQueryMap;

.field private mContentQueryMapSystem:Landroid/content/ContentQueryMap;

.field mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

.field mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

.field mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

.field mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

.field mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

.field mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

.field mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mAutoAnswerEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoAnswerEnabler;

    .line 34
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    .line 35
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    .line 36
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    .line 37
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    .line 38
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    .line 39
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    .line 40
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    .line 41
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    .line 42
    new-instance v4, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    .line 46
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSecure:Landroid/content/ContentQueryMap;

    if-nez v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 49
    .local v1, cursorGps:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 50
    new-instance v4, Landroid/content/ContentQueryMap;

    const-string v5, "name"

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSecure:Landroid/content/ContentQueryMap;

    .line 51
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSecure:Landroid/content/ContentQueryMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v4, v5}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 54
    .end local v1           #cursorGps:Landroid/database/Cursor;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSystem:Landroid/content/ContentQueryMap;

    if-nez v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 57
    .local v0, cursorAutoRtation:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 58
    new-instance v4, Landroid/content/ContentQueryMap;

    const-string v5, "name"

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSystem:Landroid/content/ContentQueryMap;

    .line 59
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSystem:Landroid/content/ContentQueryMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v4, v5}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 62
    .end local v0           #cursorAutoRtation:Landroid/database/Cursor;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSync:Landroid/content/ContentQueryMap;

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 65
    .local v3, cursorSync:Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 66
    new-instance v4, Landroid/content/ContentQueryMap;

    const-string v5, "name"

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSync:Landroid/content/ContentQueryMap;

    .line 67
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapSync:Landroid/content/ContentQueryMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-virtual {v4, v5}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 70
    .end local v3           #cursorSync:Landroid/database/Cursor;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapMotion:Landroid/content/ContentQueryMap;

    if-nez v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 72
    .local v2, cursorMotion:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 73
    new-instance v4, Landroid/content/ContentQueryMap;

    const-string v5, "name"

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapMotion:Landroid/content/ContentQueryMap;

    .line 74
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mContentQueryMapMotion:Landroid/content/ContentQueryMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    invoke-virtual {v4, v5}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 84
    .end local v2           #cursorMotion:Landroid/database/Cursor;
    :cond_3
    return-void
.end method


# virtual methods
.method public getAutoRotationEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    return-object v0
.end method

.method public getBluetoothEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    return-object v0
.end method

.method public getGpsEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    return-object v0
.end method

.method public getMotionRecognitionEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    return-object v0
.end method

.method public getNfcEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    return-object v0
.end method

.method public getSilentEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    return-object v0
.end method

.method public getSyncEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    return-object v0
.end method

.method public getWifiEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    return-object v0
.end method
