.class public Lcom/android/systemui/statusbar/easysetting/QuickSetting;
.super Ljava/lang/Object;
.source "QuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;
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

.field protected TAG:Ljava/lang/String;

.field private l:Landroid/view/View$OnTouchListener;

.field private lc:Landroid/view/View$OnLongClickListener;

.field mBrightnessBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field mBtBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field mCarrier:I

.field mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field mDistance:I

.field private mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

.field private mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

.field mDuration:I

.field mEasySettingMoreLeft:Landroid/widget/ImageView;

.field mEasySettingMoreRight:Landroid/widget/ImageView;

.field mEasySettingShadowLeft:Landroid/widget/ImageView;

.field mEasySettingShadowRight:Landroid/widget/ImageView;

.field mEcoOnOff:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

.field mFirstLayout:Landroid/widget/LinearLayout;

.field mFontBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field mInterpolation:I

.field private mIsEditMode:Z

.field mLockBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field private mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

.field private mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

.field mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

.field mNFCBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field private mQuickSettingHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;",
            ">;"
        }
    .end annotation
.end field

.field mQuickSettingLayout:Landroid/widget/LinearLayout;

.field private mQuickSettingOrder:Ljava/util/HashMap;
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

.field private mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

.field private mQuickSettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSecondLayout:Landroid/widget/LinearLayout;

.field mSoundBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mWiFiBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

.field mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
    .locals 9
    .parameter "context"
    .parameter "qs"
    .parameter "manager"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v2, "QuickSetting"

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

    .line 86
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mInterpolation:I

    .line 87
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDuration:I

    .line 88
    const/16 v2, -0x50

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDistance:I

    .line 102
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_ALL:I

    .line 103
    iput v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_WIFI:I

    .line 104
    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_TETHERING:I

    .line 105
    iput v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_DATA:I

    .line 106
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_BT:I

    .line 107
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_GPS:I

    .line 108
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->POLICY_NFC:I

    .line 114
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/QuickSetting$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$3;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->l:Landroid/view/View$OnTouchListener;

    .line 617
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/QuickSetting$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$15;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 194
    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingLayout:Landroid/widget/LinearLayout;

    .line 195
    iput-object p3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    .line 197
    const v2, 0x7f0c0073

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEcoOnOff:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEcoOnOff:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    const v2, 0x7f0c0076

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBtBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 202
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBtBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    const v2, 0x7f0c0079

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    const v2, 0x7f0c0070

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSoundBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSoundBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    const v2, 0x7f0c0071

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    const v2, 0x7f0c0078

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mLockBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mLockBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 216
    const v2, 0x7f0c0077

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mNFCBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mNFCBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    const v2, 0x7f0c0074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFontBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFontBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    const v2, 0x7f0c0072

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBrightnessBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBrightnessBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->lc:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 232
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z

    .line 233
    const v2, 0x7f0c0069

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    .line 234
    const v2, 0x7f0c006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->registerReceivers()V

    .line 239
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, carrier:Ljava/lang/String;
    const-string v2, "lgu+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    iput v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mCarrier:I

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->registerQuickSettingClick()V

    .line 252
    const v2, 0x7f0c006e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    .line 254
    const v2, 0x7f0c0059

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreLeft:Landroid/widget/ImageView;

    .line 255
    const v2, 0x7f0c005b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreRight:Landroid/widget/ImageView;

    .line 256
    const v2, 0x7f0c005a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingShadowLeft:Landroid/widget/ImageView;

    .line 257
    const v2, 0x7f0c005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingShadowRight:Landroid/widget/ImageView;

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingShadowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingShadowRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    new-instance v3, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->setChangedChildViewLisnter(Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;)V

    .line 289
    const v2, 0x7f0c006f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    .line 290
    const v2, 0x7f0c0075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    .line 291
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    .line 295
    const v2, 0x7f0c006d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->setDragController(Lcom/android/systemui/statusbar/easysetting/DragController;)V

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->setChildLayout(Landroid/view/ViewGroup;)V

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setScrollView(Landroid/view/View;)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDragScoller(Lcom/android/systemui/statusbar/easysetting/DragScroller;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDragListener(Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;)V

    .line 303
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    .line 304
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingOrder:Ljava/util/HashMap;

    .line 305
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const-string v4, "QuickSetting"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->childTraverse(Landroid/view/View;)I

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->makeEasySettingOrder(Landroid/view/View;I)I

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->reArrangeQuickSetting()V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getWifiEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    move-result-object v1

    .line 311
    .local v1, wifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
    if-eqz v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->bindQuickButton(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)V

    .line 315
    .end local v1           #wifiEnabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
    :cond_1
    return-void

    .line 243
    :cond_2
    const-string v2, "skt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    iput v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mCarrier:I

    goto/16 :goto_0

    .line 246
    :cond_3
    const-string v2, "kt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mCarrier:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/QuickSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->checkMdmPolicy(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/easysetting/QuickSetting;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/EasySettingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    return-object v0
.end method

.method private checkMdmPolicy(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

    const-string v1, "checkMdmPolicy : devicePolicy manager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeModeNormal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeNormal(Landroid/view/View;)I

    .line 830
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->cancelDrag()V

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->makeEasySettingOrder(Landroid/view/View;I)I

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingOrder:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->putPreference(Ljava/util/HashMap;)Z

    .line 841
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDirty(Z)V

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->setEasySettingBackground()V

    .line 844
    return-void
.end method

.method public changeModeToEdit()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragLayer:Lcom/android/systemui/statusbar/easysetting/DragLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragLayer;->changeModeToEdit(Landroid/view/View;)I

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->setEasySettingBackground()V

    .line 826
    return-void
.end method

.method public childTraverse(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .line 731
    const/4 v2, 0x0

    .line 732
    .local v2, numChild:I
    const/4 v1, 0x0

    .line 734
    .local v1, nReturnChild:I
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 736
    check-cast v3, Landroid/view/ViewGroup;

    .line 737
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 738
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 740
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->childTraverse(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    .end local v0           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v4, :cond_1

    .line 746
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 747
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;Landroid/view/View;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const/4 v1, 0x1

    .line 752
    :cond_1
    return v1
.end method

.method dismissKeyguard()V
    .locals 1

    .prologue
    .line 333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method itorator()V
    .locals 7

    .prologue
    .line 687
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    .line 688
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 689
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 690
    .local v1, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 693
    .local v3, s:Ljava/lang/String;
    const-string v4, "List"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public makeEasySettingOrder(Landroid/view/View;I)I
    .locals 7
    .parameter "view"
    .parameter "index"

    .prologue
    .line 785
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 787
    check-cast v3, Landroid/view/ViewGroup;

    .line 788
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 789
    .local v2, numChild:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 791
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->makeEasySettingOrder(Landroid/view/View;I)I

    move-result p2

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    .end local v0           #i:I
    .end local v2           #numChild:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v4, :cond_1

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 798
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingOrder:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, index:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeEasySettingOrder_quick :: view tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 802
    .end local v1           #index:I
    .restart local p2
    :cond_1
    return p2
.end method

.method public reArrangeQuickSetting()V
    .locals 10

    .prologue
    .line 653
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingOrder:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 654
    .local v6, viewTag:[Ljava/lang/String;
    array-length v1, v6

    .line 655
    .local v1, maxCursor:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPreference:Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;

    array-length v8, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingOrder:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/systemui/statusbar/easysetting/EasysettingPreference;->getPreference([Ljava/lang/String;ILjava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-eq v1, v7, :cond_2

    .line 661
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

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

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->removeAllQuickSettings(Landroid/view/View;)V

    .line 667
    const/4 v3, 0x0

    .line 668
    .local v3, nIndex:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

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

    .line 669
    const/4 v2, 0x0

    .local v2, nCursor:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 671
    rem-int/lit8 v3, v2, 0x5

    .line 673
    const/4 v7, 0x5

    if-ge v2, v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    .line 675
    .local v5, vg:Landroid/view/ViewGroup;
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingHash:Ljava/util/HashMap;

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;

    .line 676
    .local v0, item:Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;
    iget-object v4, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mView:Landroid/view/View;

    .line 677
    .local v4, sourceView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

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

    const-string v9, " view id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    .end local v0           #item:Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;
    .end local v4           #sourceView:Landroid/view/View;
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    goto :goto_2
.end method

.method registerQuickSettingClick()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBtBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$4;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSoundBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$7;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$9;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBrightnessBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$10;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mLockBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$11;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEcoOnOff:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$12;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mNFCBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$13;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFontBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting$14;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    return-void
.end method

.method registerReceivers()V
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->TAG:Ljava/lang/String;

    const-string v2, "RegisterReceivers"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 903
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 906
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v1, "change_mdm_policy_tethering"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string v1, "com.android.bluetooth.action.UPDATE_BT_MDM_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v1, "change_mdm_policy_nfc"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 912
    return-void
.end method

.method public removeAllQuickSettings(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 757
    const/4 v2, 0x0

    .line 759
    .local v2, numChild:I
    if-nez p1, :cond_1

    .line 780
    :cond_0
    return-void

    .line 762
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 764
    check-cast v3, Landroid/view/ViewGroup;

    .line 765
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 767
    move v1, v2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 769
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    if-eqz v4, :cond_2

    .line 772
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 767
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->removeAllQuickSettings(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDefaultPage()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingPage:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->showDefaultScreen()V

    .line 188
    return-void
.end method

.method public setEasySettingBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 878
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 895
    .end local v0           #rotation:I
    :goto_0
    return-void

    .line 880
    .restart local v0       #rotation:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 881
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 892
    .end local v0           #rotation:I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFirstLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSecondLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setModeChanger(Lcom/android/systemui/statusbar/easysetting/ModeChanger;)V
    .locals 0
    .parameter "mo"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .line 849
    return-void
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 638
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 639
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/DragSource;

    move-object v1, v0

    .line 641
    .local v1, dragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mDragController:Lcom/android/systemui/statusbar/easysetting/DragController;

    sget v4, Lcom/android/systemui/statusbar/easysetting/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, p1, v1, v1, v4}, Lcom/android/systemui/statusbar/easysetting/DragController;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V

    .line 642
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    const/4 v3, 0x1

    .line 646
    .end local v1           #dragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;
    :goto_0
    return v3

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBtBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiDirectBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mWiFiBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mSoundBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mLockBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mBrightnessBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEcoOnOff:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mNFCBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mFontBtn:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->setEasySettingBackground()V

    .line 872
    return-void
.end method

.method public visible(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 807
    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mQuickSettingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
