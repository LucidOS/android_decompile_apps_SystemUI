.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;
.super Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesStateHelper;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemesKeyStateHelper"
.end annotation


# instance fields
.field private _resource:Landroid/content/res/Resources;

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 509
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    .line 510
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesStateHelper;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)V

    .line 502
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    .line 503
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 504
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 505
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 506
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 507
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    .line 512
    return-void
.end method


# virtual methods
.method public getBackAltKeyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackAltKeyLandDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackKeyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackKeyLandDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThreeKeyInvisibleResource(I)I
    .locals 4
    .parameter "button"

    .prologue
    const/4 v1, 0x0

    .line 544
    const/4 v2, 0x4

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getRecentsInvisibleDrawableId()I

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getHomeInvisibleDrawableId()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getBackInvisibleDrawableId()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getMenuInvisibleDrawableId()I

    move-result v3

    aput v3, v0, v2

    .line 548
    .local v0, buttonInvisibleResId:[I
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->isButtonValied(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    aget v1, v0, p1

    .line 552
    :cond_0
    return v1
.end method

.method public getThreeKeyResource(I)I
    .locals 4
    .parameter "button"

    .prologue
    const/4 v1, 0x0

    .line 531
    const/4 v2, 0x4

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getRecentsDrawableId()I

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getHomeDrawableId()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getBackDrawableId()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getMenuDrawableId()I

    move-result v3

    aput v3, v0, v2

    .line 535
    .local v0, buttonResId:[I
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->isButtonValied(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    aget v1, v0, p1

    .line 539
    :cond_0
    return v1
.end method

.method public setKeyState(II)V
    .locals 5
    .parameter "theme"
    .parameter "rot"

    .prologue
    const v4, 0x7f0200c2

    const v3, 0x7f0200c1

    .line 557
    const-string v0, "NavigationBarViewUtils.Themes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyState :: theme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    packed-switch p1, :pswitch_data_0

    .line 577
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackKeySet;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/BlackKeySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->setRotationState(I)V

    .line 585
    return-void

    .line 560
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackKeySet;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/BlackKeySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 569
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mKeyState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhitePort;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/WhitePort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhitePort;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White270;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White270;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigationkeys/White270;->getBackDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->_resource:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesKeyStateHelper;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
