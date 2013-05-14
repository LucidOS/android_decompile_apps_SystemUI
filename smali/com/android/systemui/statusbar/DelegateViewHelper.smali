.class public Lcom/android/systemui/statusbar/DelegateViewHelper;
.super Ljava/lang/Object;
.source "DelegateViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DelegateViewHelper$1;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mDelegateView:Landroid/view/View;

.field private mDownPoint:[F

.field mInitialTouch:Landroid/graphics/RectF;

.field private mPanelShowing:Z

.field private mSourceView:Landroid/view/View;

.field private mStarted:Z

.field private mSwapXY:Z

.field private mTempPoint:[I

.field private mTriggerThreshhold:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "sourceView"

    .prologue
    const/4 v1, 0x2

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSourceView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 57
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldDisableNavbarGestures()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v8

    .line 62
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v6, v6, v8

    int-to-float v4, v6

    .line 64
    .local v4, sourceX:F
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v6, v6, v7

    int-to-float v5, v6

    .line 67
    .local v5, sourceY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 76
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    if-eqz v6, :cond_0

    .line 83
    sget-object v6, Lcom/android/systemui/statusbar/DelegateViewHelper$1;->$SwitchMap$com$android$internal$pantech$PantechVendor$RecentAppDeviceVal:[I

    sget-object v9, Lcom/android/internal/pantech/PantechVendor;->RECENT_APP_DEVICE_NAME:Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;

    invoke-virtual {v9}, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 96
    :pswitch_0
    sget v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->recvNavigationTheme:I

    if-eq v6, v7, :cond_0

    .line 119
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v6, v6, v8

    int-to-float v0, v6

    .line 121
    .local v0, delegateX:F
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    aget v6, v6, v7

    int-to-float v1, v6

    .line 123
    .local v1, delegateY:F
    sub-float v2, v4, v0

    .line 124
    .local v2, deltaX:F
    sub-float v3, v5, v1

    .line 125
    .local v3, deltaY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 126
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    neg-float v6, v2

    neg-float v7, v3

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 128
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    goto :goto_0

    .line 69
    .end local v0           #delegateX:F
    .end local v1           #delegateY:F
    .end local v2           #deltaX:F
    .end local v3           #deltaY:F
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    .line 70
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    aput v9, v6, v8

    .line 71
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    aput v9, v6, v7

    .line 72
    iget-object v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    aget v9, v9, v8

    add-float/2addr v9, v4

    iget-object v10, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    aget v10, v10, v7

    add-float/2addr v10, v5

    invoke-virtual {v6, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    goto :goto_1

    :cond_2
    move v6, v8

    .line 69
    goto :goto_2

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 54
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    .line 50
    return-void
.end method

.method public varargs setInitialTouchRegion([Landroid/view/View;)V
    .locals 11
    .parameter "views"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 148
    .local v0, bounds:Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 149
    .local v2, p:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 150
    aget-object v3, p1, v1

    .line 151
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 149
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    if-nez v1, :cond_1

    .line 154
    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 156
    :cond_1
    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_1

    .line 159
    .end local v3           #view:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 160
    return-void
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTriggerThreshhold:F

    .line 137
    :cond_0
    return-void
.end method

.method public setSwapXY(Z)V
    .locals 0
    .parameter "swap"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    .line 168
    return-void
.end method
