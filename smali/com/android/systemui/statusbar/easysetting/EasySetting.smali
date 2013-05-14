.class public Lcom/android/systemui/statusbar/easysetting/EasySetting;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;,
        Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;
    }
.end annotation


# instance fields
.field final POLICY_ALL:I

.field final POLICY_BT:I

.field final POLICY_DATA:I

.field final POLICY_GPS:I

.field final POLICY_NFC:I

.field final POLICY_TETHERING:I

.field final POLICY_WIFI:I

.field private editClick:Landroid/view/View$OnClickListener;

.field firstLayout:Landroid/widget/LinearLayout;

.field private isDebugMode:Z

.field private l:Landroid/view/View$OnTouchListener;

.field private lc:Landroid/view/View$OnLongClickListener;

.field mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

.field mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

.field mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mCarrier:I

.field mContext:Landroid/content/Context;

.field mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

.field private mDataOnOffEnabled:Z

.field mDistance:I

.field private mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

.field private mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

.field mDuration:I

.field private mEasySettingHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;",
            ">;"
        }
    .end annotation
.end field

.field mEasySettingLayout:Landroid/widget/LinearLayout;

.field mEasySettingMoreLeft:Landroid/widget/ImageButton;

.field mEasySettingMoreRight:Landroid/widget/ImageButton;

.field private mEasySettingOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

.field private mEasySettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

.field mEasySettingShadowLeft:Landroid/widget/ImageView;

.field mEasySettingShadowRight:Landroid/widget/ImageView;

.field mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

.field mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

.field mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mInterpolation:I

.field private mIsEditMode:Z

.field private mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

.field private mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

.field private mMotionObserver:Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;

.field mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

.field mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

.field mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mOnOffContainter:Landroid/widget/LinearLayout;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

.field mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

.field mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

.field mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

.field secondLayout:Landroid/widget/LinearLayout;

.field private wifi_state_lock:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
    .locals 9
    .parameter "context"
    .parameter "es"
    .parameter "manager"

    .prologue
    const v8, 0x7f0c0057

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->isDebugMode:Z

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionObserver:Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;

    .line 146
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySetting$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 187
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_ALL:I

    .line 188
    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_WIFI:I

    .line 189
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_TETHERING:I

    .line 190
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_DATA:I

    .line 191
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_BT:I

    .line 192
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_GPS:I

    .line 193
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->POLICY_NFC:I

    .line 196
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataOnOffEnabled:Z

    .line 199
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    .line 212
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mInterpolation:I

    .line 213
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDuration:I

    .line 214
    const/16 v2, -0x50

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDistance:I

    .line 217
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySetting$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$3;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->l:Landroid/view/View$OnTouchListener;

    .line 327
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySetting$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$4;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    .line 1055
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->editClick:Landroid/view/View$OnClickListener;

    .line 570
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setManager(Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, carrier:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Carrier;->getCarrier(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    .line 576
    const v2, 0x7f0c005e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    .line 577
    const v2, 0x7f0c0064

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    .line 578
    const v2, 0x7f0c005d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    .line 580
    const v2, 0x7f0c006e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    .line 584
    .local v1, quickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mInterpolation:I

    .line 585
    const v2, 0x7f0c0059

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreLeft:Landroid/widget/ImageButton;

    .line 586
    const v2, 0x7f0c005b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreRight:Landroid/widget/ImageButton;

    .line 587
    const v2, 0x7f0c005a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingShadowLeft:Landroid/widget/ImageView;

    .line 588
    const v2, 0x7f0c005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingShadowRight:Landroid/widget/ImageView;

    .line 589
    const-string v2, "JY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Easysetting mmEasySettingMoreLeft clickable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreLeft:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingShadowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingShadowRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    new-instance v3, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->setChangedChildViewLisnter(Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;)V

    .line 624
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 625
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 627
    const v2, 0x7f0c0060

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 628
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getWifiEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    .line 629
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    const v2, 0x7f0c0065

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 633
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getBluetoothEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    .line 634
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    const v2, 0x7f0c0062

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 638
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getGpsEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    .line 639
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v2, 0x7f0c0061

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 644
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    const v2, 0x7f0c005f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 649
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getSilentEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 651
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v2, 0x7f0c0068

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 654
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getAutoRotationEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 656
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    const v2, 0x7f0c0066

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 662
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getNfcEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    .line 663
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 664
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const v2, 0x7f0c0063

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getMotionRecognitionEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    .line 668
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 669
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    const v2, 0x7f0c0067

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 682
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getSyncEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    .line 683
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    .line 684
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    .line 692
    const v2, 0x7f0c0069

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const v2, 0x7f0c006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    .line 695
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mOnOffContainter:Landroid/widget/LinearLayout;

    .line 699
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    if-ne v2, v6, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->registerReceivers()V

    .line 704
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingHash:Ljava/util/HashMap;

    .line 706
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    .line 707
    const v2, 0x7f0c0058

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    .line 708
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->setDragController(Lcom/android/systemui/statusbar/easysetting/DragController;)V

    .line 709
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->setChildLayout(Landroid/view/ViewGroup;)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setScrollView(Landroid/view/View;)V

    .line 712
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDragScoller(Lcom/android/systemui/statusbar/easysetting/DragScroller;)V

    .line 713
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDragListener(Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;)V

    .line 715
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->childTraverse(Landroid/view/View;)I

    .line 717
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingOrder:Ljava/util/HashMap;

    .line 718
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const-string v4, "EasySetting"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    .line 719
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->makeEasySettingOrder(Landroid/view/View;I)I

    .line 721
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 722
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 723
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 724
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 725
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 726
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 728
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 732
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 735
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingLayout:Landroid/widget/LinearLayout;

    .line 736
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->wifi_state_lock:Z

    .line 737
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->reArrangeEasySetting()V

    .line 738
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->getMotionOnOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->isDebugMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    return-object v0
.end method

.method private boolToState(Z)I
    .locals 1
    .parameter "b"

    .prologue
    .line 947
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMdmPolicy(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1185
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1238
    :cond_0
    return-void
.end method

.method private getMotionOnOff()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public changeModeNormal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeNormal(Landroid/view/View;)I

    .line 1149
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->makeEasySettingOrder(Landroid/view/View;I)I

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->putPreference(Ljava/util/HashMap;)Z

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDirty(Z)V

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->cancelDrag()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setEasySettingBackground()V

    .line 1163
    return-void
.end method

.method public changeModeToEdit()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setEasySettingBackground()V

    .line 1145
    return-void
.end method

.method public childTraverse(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 446
    .local v1, nReturnChild:I
    const-string v4, "EasySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childTraverse :: view  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 449
    check-cast v3, Landroid/view/ViewGroup;

    .line 450
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 453
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->childTraverse(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v4, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 462
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;Landroid/view/View;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/4 v1, 0x1

    .line 468
    :cond_1
    return v1
.end method

.method public getMdmPolicyDisabled(I)Z
    .locals 3
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 1272
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1305
    :cond_0
    return v2
.end method

.method public getNfcOnOff()Z
    .locals 3

    .prologue
    .line 855
    const/4 v0, 0x0

    .line 857
    .local v0, state:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    .line 874
    :goto_0
    return v0

    .line 872
    :cond_1
    const-string v1, "EasySettings"

    const-string v2, "getNfcOnOff : nfcAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeEasySettingOrder(Landroid/view/View;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1102
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1104
    check-cast v0, Landroid/view/ViewGroup;

    .line 1105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1106
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1108
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->makeEasySettingOrder(Landroid/view/View;I)I

    move-result p2

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v0, :cond_1

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1116
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v0, "EasySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeEasySettingOrder :: view tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 1121
    :cond_1
    return p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0069

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c006a

    if-ne v0, v3, :cond_2

    .line 953
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    if-nez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 1004
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 974
    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 977
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isOn()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 978
    :goto_1
    if-eqz v3, :cond_3

    .line 980
    :cond_3
    const-string v4, "EasySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick :: v = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-ne v0, v4, :cond_5

    .line 984
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setNfcEnabled(Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->boolToState(Z)I

    move-result v3

    .line 994
    :goto_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 996
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->showProgress()V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 977
    goto :goto_1

    .line 988
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-ne v0, v4, :cond_8

    .line 990
    const-string v4, "EasySetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMotionOnOff enabling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setMotionOnOff(Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->boolToState(Z)I

    move-result v3

    goto :goto_2

    .line 1000
    :cond_6
    if-ne v3, v1, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_2
.end method

.method public reArrangeEasySetting()V
    .locals 10

    .prologue
    .line 377
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingOrder:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 378
    .local v6, viewTag:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    array-length v8, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingOrder:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->getPreference([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    array-length v1, v6

    .line 383
    .local v1, maxCursor:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingHash:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-eq v1, v7, :cond_2

    .line 385
    const-string v7, "EasySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reArrange :: maxCursor != hash size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingHash:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->removeAllEasySettings(Landroid/view/View;)V

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, nIndex:I
    const-string v7, "EasySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reArrange :: maxCursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v2, 0x0

    .local v2, nCursor:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 395
    rem-int/lit8 v3, v2, 0x5

    .line 397
    const/4 v7, 0x5

    if-ge v2, v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    .line 399
    .local v5, vg:Landroid/view/ViewGroup;
    :goto_2
    const-string v7, "EasySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reArrange :: tag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nCursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingHash:Ljava/util/HashMap;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;

    .line 401
    .local v0, item:Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;
    iget-object v4, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mView:Landroid/view/View;

    .line 404
    .local v4, sourceView:Landroid/view/View;
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    .end local v0           #item:Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;
    .end local v4           #sourceView:Landroid/view/View;
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    goto :goto_2
.end method

.method registerReceivers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 742
    const-string v1, "EasySetting"

    const-string v2, "RegisterReceivers"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 747
    .local v0, filter:Landroid/content/IntentFilter;
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    if-ne v1, v3, :cond_0

    .line 748
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mCarrier:I

    if-ne v1, v3, :cond_1

    .line 756
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v1, "change_mdm_policy_tethering"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string v1, "change_mdm_policy_data_network"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v1, "com.android.bluetooth.action.UPDATE_BT_MDM_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v1, "change_mdm_policy_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v1, "change_mdm_policy_nfc"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    return-void
.end method

.method public removeAllEasySettings(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 473
    const/4 v2, 0x0

    .line 475
    .local v2, numChild:I
    if-nez p1, :cond_1

    .line 496
    :cond_0
    return-void

    .line 478
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 480
    check-cast v3, Landroid/view/ViewGroup;

    .line 481
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 483
    move v1, v2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 485
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 483
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->removeAllEasySettings(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDefaultPage()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->showDefaultScreen()V

    .line 566
    return-void
.end method

.method public setEasySettingBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1034
    packed-switch v0, :pswitch_data_0

    .line 1051
    :goto_0
    return-void

    .line 1036
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1041
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->firstLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->secondLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1034
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setManager(Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    .line 1179
    return-void
.end method

.method public setModeChanger(Lcom/android/systemui/statusbar/easysetting/ModeChanger;)V
    .locals 0
    .parameter "mo"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .line 1168
    return-void
.end method

.method public setMotionOnOff(Z)Z
    .locals 2
    .parameter "enabling"

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->getMotionOnOff()Z

    move-result v0

    .line 925
    .local v0, currentState:Z
    if-ne v0, p1, :cond_0

    .line 941
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 929
    .restart local v0       #currentState:Z
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySetting$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySetting$6;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, p1

    .line 941
    goto :goto_0
.end method

.method public setNfcEnabled(Z)Z
    .locals 6
    .parameter "enabling"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->getNfcOnOff()Z

    move-result v0

    .line 879
    .local v0, currentState:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 880
    .local v1, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-ne v0, p1, :cond_0

    .line 916
    .end local v0           #currentState:Z
    :goto_0
    return v0

    .line 883
    .restart local v0       #currentState:Z
    :cond_0
    const/4 v2, 0x0

    .line 884
    .local v2, succeeded:Z
    if-eqz v1, :cond_1

    .line 910
    const-string v3, "EasySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set nfc enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v2

    .line 916
    goto :goto_0

    .line 914
    :cond_1
    const-string v3, "EasySettings"

    const-string v4, "setNfcEnabled : nfcAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 361
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 364
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/DragSource;

    move-object v1, v0

    .line 365
    .local v1, dragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    sget v4, Lcom/android/systemui/statusbar/easysetting/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, p1, v1, v1, v4}, Lcom/android/systemui/statusbar/easysetting/DragController;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V

    .line 366
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v3, 0x1

    .line 371
    .end local v1           #dragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;
    :goto_0
    return v3

    .line 369
    :catch_0
    move-exception v2

    .line 371
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateEnabled()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->getState()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(I)V

    .line 772
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getWifiState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 775
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->getMdmPolicyDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->getAirplaneModeState()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setEnabled(Z)V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/GpsEnabler;->getEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBluetoothEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->getBtState()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionRecognitionEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/MotionRecognitionEnabler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAutoRotationEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/AutoRotationEnabler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 796
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 799
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V

    .line 800
    return-void

    :cond_1
    move v0, v2

    .line 772
    goto :goto_0

    :cond_2
    move v0, v2

    .line 776
    goto :goto_1

    :cond_3
    move v1, v2

    .line 780
    goto :goto_2

    .line 793
    :cond_4
    const-string v0, "EasySettings"

    const-string v1, "updateEnabled :: nfc adapter is null, do nothing"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mWifiOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mBtOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mGpsOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mAlwaysOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mDataEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateResources()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mRotationOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mNfcOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSyncOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->setEasySettingBackground()V

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mSilentEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/SilentEnabler;->updateResource()V

    .line 1097
    return-void
.end method

.method public visible(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 1125
    if-eqz p1, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mOnOffContainter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mOnOffContainter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
