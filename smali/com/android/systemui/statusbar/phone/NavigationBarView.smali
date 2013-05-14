.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    }
.end annotation


# instance fields
.field private final THREE_KEY_THEME:I

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mBarSize:I

.field private mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

.field private mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

.field mCurrentView:Landroid/view/View;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mHidden:Z

.field private mLastRotation:I

.field private mLastTheme:I

.field mLightsOutListener:Landroid/view/View$OnTouchListener;

.field mLowProfile:Z

.field private mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

.field mNavigationIconHints:I

.field mRotatedViews:[Landroid/view/View;

.field mShowMenu:Z

.field private mThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 77
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 83
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 84
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 97
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    .line 98
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    .line 99
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    .line 100
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    .line 101
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRotation:I

    .line 102
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->THREE_KEY_THEME:I

    .line 104
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 248
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 224
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    .line 226
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 228
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 234
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 235
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 237
    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 238
    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 239
    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 244
    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 246
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationBarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationThemes(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    return-object v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 708
    if-eqz p1, :cond_0

    .line 709
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 711
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 716
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 712
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 713
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 716
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .parameter "how"

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 722
    return-void
.end method

.method private setKeyState(I)V
    .locals 13
    .parameter "rot"

    .prologue
    .line 588
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v12

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v12, v11, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->setKeyState(II)V

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 591
    .local v7, menu:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 592
    .local v9, recents:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 593
    .local v4, home:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 594
    .local v0, back:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButtonInLightOut()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 595
    .local v8, menuInLightOut:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButtonInLightOut()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 596
    .local v10, recentsInLightOut:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButtonInLightOut()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 597
    .local v5, homeInLightOut:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButtonInLightOut()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 599
    .local v1, backInLightOut:Landroid/widget/ImageView;
    const/4 v11, 0x4

    new-array v2, v11, [Landroid/widget/ImageView;

    const/4 v11, 0x0

    aput-object v9, v2, v11

    const/4 v11, 0x1

    aput-object v4, v2, v11

    const/4 v11, 0x2

    aput-object v0, v2, v11

    const/4 v11, 0x3

    aput-object v7, v2, v11

    .line 600
    .local v2, button:[Landroid/widget/ImageView;
    const/4 v11, 0x4

    new-array v3, v11, [Landroid/widget/ImageView;

    const/4 v11, 0x0

    aput-object v10, v3, v11

    const/4 v11, 0x1

    aput-object v5, v3, v11

    const/4 v11, 0x2

    aput-object v1, v3, v11

    const/4 v11, 0x3

    aput-object v8, v3, v11

    .line 602
    .local v3, buttonInLightOut:[Landroid/widget/ImageView;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_1

    .line 603
    aget-object v11, v2, v6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getThreeKeyResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    aget-object v11, v3, v6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getThreeKeyInvisibleResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 588
    .end local v0           #back:Landroid/widget/ImageView;
    .end local v1           #backInLightOut:Landroid/widget/ImageView;
    .end local v2           #button:[Landroid/widget/ImageView;
    .end local v3           #buttonInLightOut:[Landroid/widget/ImageView;
    .end local v4           #home:Landroid/widget/ImageView;
    .end local v5           #homeInLightOut:Landroid/widget/ImageView;
    .end local v6           #i:I
    .end local v7           #menu:Landroid/widget/ImageView;
    .end local v8           #menuInLightOut:Landroid/widget/ImageView;
    .end local v9           #recents:Landroid/widget/ImageView;
    .end local v10           #recentsInLightOut:Landroid/widget/ImageView;
    :cond_0
    const/4 v11, 0x1

    goto :goto_0

    .line 606
    .restart local v0       #back:Landroid/widget/ImageView;
    .restart local v1       #backInLightOut:Landroid/widget/ImageView;
    .restart local v2       #button:[Landroid/widget/ImageView;
    .restart local v3       #buttonInLightOut:[Landroid/widget/ImageView;
    .restart local v4       #home:Landroid/widget/ImageView;
    .restart local v5       #homeInLightOut:Landroid/widget/ImageView;
    .restart local v6       #i:I
    .restart local v7       #menu:Landroid/widget/ImageView;
    .restart local v8       #menuInLightOut:Landroid/widget/ImageView;
    .restart local v9       #recents:Landroid/widget/ImageView;
    .restart local v10       #recentsInLightOut:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private setKeyState(II)V
    .locals 16
    .parameter "theme"
    .parameter "rot"

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v14

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->setKeyState(II)V

    .line 611
    const/4 v14, 0x4

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    const/4 v13, 0x0

    .line 612
    .local v13, rot2:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0032

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 613
    .local v9, menu:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c002f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 614
    .local v11, recents:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0030

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 615
    .local v6, home:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v14, v14, v13

    const v15, 0x7f0c0031

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 616
    .local v2, back:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0035

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 617
    .local v10, menuInLightOut:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0034

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 618
    .local v12, recentsInLightOut:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0036

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 619
    .local v7, homeInLightOut:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    const v15, 0x7f0c0037

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 621
    .local v3, backInLightOut:Landroid/widget/ImageView;
    const/4 v14, 0x4

    new-array v4, v14, [Landroid/widget/ImageView;

    const/4 v14, 0x0

    aput-object v11, v4, v14

    const/4 v14, 0x1

    aput-object v6, v4, v14

    const/4 v14, 0x2

    aput-object v2, v4, v14

    const/4 v14, 0x3

    aput-object v9, v4, v14

    .line 622
    .local v4, button:[Landroid/widget/ImageView;
    const/4 v14, 0x4

    new-array v5, v14, [Landroid/widget/ImageView;

    const/4 v14, 0x0

    aput-object v12, v5, v14

    const/4 v14, 0x1

    aput-object v7, v5, v14

    const/4 v14, 0x2

    aput-object v3, v5, v14

    const/4 v14, 0x3

    aput-object v10, v5, v14

    .line 624
    .local v5, buttonInLightOut:[Landroid/widget/ImageView;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v14, v4

    if-ge v8, v14, :cond_1

    .line 625
    aget-object v14, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getThreeKeyResource(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    aget-object v14, v5, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getThreeKeyInvisibleResource(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 624
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2           #back:Landroid/widget/ImageView;
    .end local v3           #backInLightOut:Landroid/widget/ImageView;
    .end local v4           #button:[Landroid/widget/ImageView;
    .end local v5           #buttonInLightOut:[Landroid/widget/ImageView;
    .end local v6           #home:Landroid/widget/ImageView;
    .end local v7           #homeInLightOut:Landroid/widget/ImageView;
    .end local v8           #i:I
    .end local v9           #menu:Landroid/widget/ImageView;
    .end local v10           #menuInLightOut:Landroid/widget/ImageView;
    .end local v11           #recents:Landroid/widget/ImageView;
    .end local v12           #recentsInLightOut:Landroid/widget/ImageView;
    .end local v13           #rot2:I
    :cond_0
    move/from16 v13, p2

    .line 611
    goto/16 :goto_0

    .line 628
    .restart local v2       #back:Landroid/widget/ImageView;
    .restart local v3       #backInLightOut:Landroid/widget/ImageView;
    .restart local v4       #button:[Landroid/widget/ImageView;
    .restart local v5       #buttonInLightOut:[Landroid/widget/ImageView;
    .restart local v6       #home:Landroid/widget/ImageView;
    .restart local v7       #homeInLightOut:Landroid/widget/ImageView;
    .restart local v8       #i:I
    .restart local v9       #menu:Landroid/widget/ImageView;
    .restart local v10       #menuInLightOut:Landroid/widget/ImageView;
    .restart local v11       #recents:Landroid/widget/ImageView;
    .restart local v12       #recentsInLightOut:Landroid/widget/ImageView;
    .restart local v13       #rot2:I
    :cond_1
    return-void
.end method

.method private setNavigationThemes(I)V
    .locals 4
    .parameter "theme"

    .prologue
    const/4 v2, 0x3

    .line 638
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 639
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    .line 641
    .local v1, rot:I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setKeyState(II)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v1           #rot:I
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 643
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getBackKeyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 644
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getBackKeyLandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getBackAltKeyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getKeyStateHelper()Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->getBackAltKeyLandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 648
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "vis"

    .prologue
    .line 725
    sparse-switch p0, :sswitch_data_0

    .line 731
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 727
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 729
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 725
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 736
    const-string v6, "NavigationBarView {"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 739
    .local v4, r:Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      this: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 743
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 745
    .local v3, offscreen:Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      window: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_2

    const-string v6, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    const-string v6, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const-string v7, "      disabled=0x%08x vertical=%s hidden=%s low=%s menu=%s"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v6, :cond_3

    const-string v6, "true"

    :goto_2
    aput-object v6, v8, v9

    const/4 v9, 0x2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-eqz v6, :cond_4

    const-string v6, "true"

    :goto_3
    aput-object v6, v8, v9

    const/4 v9, 0x3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-eqz v6, :cond_5

    const-string v6, "true"

    :goto_4
    aput-object v6, v8, v9

    const/4 v9, 0x4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v6, :cond_6

    const-string v6, "true"

    :goto_5
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, back:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    .line 764
    .local v1, home:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v5

    .line 765
    .local v5, recent:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, menu:Landroid/view/View;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      back: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      home: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      rcnt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      menu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    const-string v6, "    }"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    return-void

    .line 743
    .end local v0           #back:Landroid/view/View;
    .end local v1           #home:Landroid/view/View;
    .end local v2           #menu:Landroid/view/View;
    .end local v3           #offscreen:Z
    .end local v5           #recent:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 745
    .restart local v3       #offscreen:Z
    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    .line 755
    :cond_3
    const-string v6, "false"

    goto/16 :goto_2

    :cond_4
    const-string v6, "false"

    goto/16 :goto_3

    :cond_5
    const-string v6, "false"

    goto/16 :goto_4

    :cond_6
    const-string v6, "false"

    goto/16 :goto_5
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBackButtonInLightOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButtonInLightOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButtonInLightOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButtonInLightOut()Landroid/view/View;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->clear()V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    if-eqz v0, :cond_0

    .line 571
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    .line 573
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;->clear()V

    .line 578
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->clear()V

    .line 583
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    .line 585
    :cond_3
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f0c003c

    const v6, 0x7f0c0039

    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 458
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x2

    const v5, 0x7f0c002d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v5, v2, v0

    .line 461
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x3

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x6

    const v5, 0x7f0c003b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v5, v2, v1

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x5

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    if-nez v2, :cond_0

    .line 479
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    if-nez v2, :cond_1

    .line 483
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationEnabledReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    if-nez v2, :cond_2

    .line 487
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->setOnThemesChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;)V

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    if-eqz v2, :cond_3

    .line 492
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarViewThemes:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getTheme()I

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    .line 493
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationThemes(I)V

    .line 496
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 492
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 653
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 657
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 659
    .local v0, rot:I
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSwapXY(Z)V

    .line 667
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSwapXY(Z)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 674
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 675
    .local v0, newVertical:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 676
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 681
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 682
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 683
    return-void

    .line 674
    .end local v0           #newVertical:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public postButtonOrientationListenerEnabled(Ljava/lang/String;I)V
    .locals 4
    .parameter "how2"
    .parameter "delayed"

    .prologue
    const/4 v3, 0x0

    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v2, 0x21ef

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 561
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public reorient()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 499
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 500
    .local v1, rot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 505
    const-string v2, "PhoneStatusBar/NavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reorient :: convertRot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , theme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 508
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 509
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 519
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 520
    return-void
.end method

.method public reorientByOrientationChanged(I)V
    .locals 7
    .parameter "convertRot"

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 528
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 529
    .local v1, rot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 535
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x4

    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRotation:I

    .line 536
    const-string v2, "PhoneStatusBar/NavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reorientationChanged :: convertRot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , theme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setKeyState(I)V

    .line 540
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 541
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 542
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 552
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHintsByOrientationChanged(IZ)V

    .line 553
    return-void

    .line 535
    :cond_2
    const/4 v2, 0x3

    goto :goto_1
.end method

.method public reorientForOrientationListenerDisabled()V
    .locals 3

    .prologue
    .line 524
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRotation:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setKeyState(II)V

    .line 525
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRotation:I

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 170
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 323
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 8
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    if-nez p2, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v3, p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 328
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 330
    const/high16 v3, 0x20

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v1, v4

    .line 331
    .local v1, disableHome:Z
    :goto_1
    const/high16 v3, 0x100

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    move v2, v4

    .line 332
    .local v2, disableRecent:Z
    :goto_2
    const/high16 v3, 0x40

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    move v0, v4

    .line 334
    .local v0, disableBack:Z
    :goto_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v7

    if-eqz v0, :cond_5

    move v3, v6

    :goto_5
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v7

    if-eqz v1, :cond_6

    move v3, v6

    :goto_6
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I

    if-ne v3, v6, :cond_7

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :goto_7
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    goto :goto_0

    .end local v0           #disableBack:Z
    .end local v1           #disableHome:Z
    .end local v2           #disableRecent:Z
    :cond_1
    move v1, v5

    .line 330
    goto :goto_1

    .restart local v1       #disableHome:Z
    :cond_2
    move v2, v5

    .line 331
    goto :goto_2

    .restart local v2       #disableRecent:Z
    :cond_3
    move v0, v5

    .line 332
    goto :goto_3

    .restart local v0       #disableBack:Z
    :cond_4
    move v3, v5

    .line 334
    goto :goto_4

    :cond_5
    move v3, v5

    .line 336
    goto :goto_5

    :cond_6
    move v3, v5

    .line 337
    goto :goto_6

    .line 346
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_8

    move v3, v6

    :goto_8
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    move v3, v5

    goto :goto_8

    .line 357
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    goto :goto_0
.end method

.method public setLowProfile(Z)V
    .locals 2
    .parameter "lightsOut"

    .prologue
    .line 398
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 399
    return-void
.end method

.method public setLowProfile(ZZZ)V
    .locals 11
    .parameter "lightsOut"
    .parameter "animate"
    .parameter "force"

    .prologue
    const-wide/16 v9, 0xfa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 402
    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-ne p1, v2, :cond_0

    .line 443
    :goto_0
    return-void

    .line 404
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0c002e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, navButtons:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0c0033

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, lowLights:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 415
    if-nez p2, :cond_4

    .line 416
    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 418
    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 419
    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 416
    goto :goto_1

    :cond_2
    move v4, v3

    .line 418
    goto :goto_2

    :cond_3
    move v2, v6

    .line 419
    goto :goto_3

    .line 421
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz p1, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_8

    const-wide/16 v7, 0x2ee

    :goto_5
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 426
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 428
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 429
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_6

    const-wide/16 v9, 0x2ee

    :cond_6
    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 421
    goto :goto_4

    :cond_8
    move-wide v7, v9

    goto :goto_5

    :cond_9
    move v4, v3

    .line 431
    goto :goto_6

    :cond_a
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;)V

    goto :goto_7
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 382
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 1
    .parameter "show"
    .parameter "force"

    .prologue
    .line 385
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    .line 389
    :cond_0
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 268
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 4
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 271
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 281
    goto :goto_1

    :cond_2
    move v0, v2

    .line 283
    goto :goto_2

    :cond_3
    move v1, v2

    .line 285
    goto :goto_3

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setNavigationIconHintsByOrientationChanged(IZ)V
    .locals 4
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 296
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 304
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 306
    goto :goto_1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_2

    :cond_3
    move v1, v2

    .line 310
    goto :goto_3
.end method

.method public setSlippery(Z)V
    .locals 4
    .parameter "newSlippery"

    .prologue
    const/high16 v3, 0x400

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 367
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 368
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 369
    .local v1, oldSlippery:Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 370
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 376
    :goto_1
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .end local v1           #oldSlippery:Z
    :cond_0
    return-void

    .line 368
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 371
    .restart local v1       #oldSlippery:Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 372
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
