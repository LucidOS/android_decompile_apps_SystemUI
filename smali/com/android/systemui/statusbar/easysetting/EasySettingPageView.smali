.class public Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;
.super Landroid/view/ViewGroup;
.source "EasySettingPageView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$1;,
        Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;,
        Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;
    }
.end annotation


# instance fields
.field private allowLongPress:Z

.field private currentScreen:I

.field private defaultScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private locked:Z

.field mAccel:F

.field private mContext:Landroid/content/Context;

.field mCurrentX:I

.field private mDeltaT:F

.field private mDuration:F

.field private mFling:I

.field private mListner:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;

.field mNow:J

.field private mRemainingTime:F

.field mTargetX:I

.field mTotalOffSet:I

.field mVel:F

.field mVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWeight:F

.field private mWidth:F

.field private mX0:F

.field private mX1:F

.field private nextScreen:I

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    .line 79
    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    .line 558
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocity:I

    .line 562
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWeight:F

    .line 113
    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->defaultScreen:I

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mContext:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->initWorkspace()V

    .line 118
    return-void
.end method

.method private flingPageToLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mNow:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float v0, v1, v2

    .line 589
    .local v0, t:F
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    if-le v1, v2, :cond_0

    .line 591
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    .line 592
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    .line 594
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollTo(II)V

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->EaseOutInterpolation()V

    .line 599
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX1:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->invalidate()V

    .line 602
    return-void
.end method

.method private flingPageToRight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mNow:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float v0, v1, v2

    .line 575
    .local v0, delta:F
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    if-ge v1, v2, :cond_0

    .line 577
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    .line 578
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    .line 580
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollTo(II)V

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->EaseOutInterpolation()V

    .line 583
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX1:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->invalidate()V

    .line 585
    return-void
.end method

.method private initWorkspace()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->defaultScreen:I

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mListner:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;

    .line 129
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchSlop:I

    .line 131
    return-void
.end method

.method private moveToFirst(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 1
    .parameter "src"
    .parameter "target"
    .parameter "nStart"
    .parameter "nEnd"
    .parameter "parent"

    .prologue
    .line 1008
    if-ne p3, p4, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1020
    :cond_0
    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p5, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private moveToLast(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 0
    .parameter "src"
    .parameter "target"
    .parameter "nStart"
    .parameter "nEnd"
    .parameter "parent"

    .prologue
    .line 1033
    if-ne p3, p4, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1036
    :cond_0
    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1040
    invoke-virtual {p5, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 14
    .parameter "src"
    .parameter "target"
    .parameter "nStart"
    .parameter "nEnd"
    .parameter "parent"

    .prologue
    .line 1083
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1087
    .local v9, targetLocation:[I
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 1088
    .local v6, sourceLocation:[I
    move-object v5, p1

    .line 1089
    .local v5, nextView:Landroid/view/View;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v8, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1092
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1094
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    rsub-int/lit8 v4, v10, 0x0

    .line 1095
    .local v4, nInterval:I
    const-string v10, "JY"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveToLeftWithAnimation :: start, end = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    move/from16 v3, p3

    .local v3, i:I
    :goto_1
    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p2

    if-eq v0, v5, :cond_2

    .line 1098
    const-string v10, "JY"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveToLeftWithAnimation :: start, end = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , nInterval = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    add-int/lit8 v10, v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1100
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1110
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1111
    new-instance v7, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1112
    .local v7, switcher:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x0

    int-to-float v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1114
    .local v2, a:Landroid/view/animation/Animation;
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1115
    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1116
    const-wide/16 v10, 0x32

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1117
    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mContext:Landroid/content/Context;

    const v11, 0x10a0005

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1119
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 14
    .parameter "src"
    .parameter "target"
    .parameter "nStart"
    .parameter "nEnd"
    .parameter "parent"

    .prologue
    .line 1047
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    move-object v5, p1

    .line 1051
    .local v5, prevView:Landroid/view/View;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v8, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1053
    .local v9, targetLocation:[I
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 1055
    .local v6, sourceLocation:[I
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1056
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1058
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-int v4, v10, v11

    .line 1060
    .local v4, nInterval:I
    move/from16 v3, p3

    .local v3, i:I
    :goto_1
    move/from16 v0, p4

    if-lt v3, v0, :cond_2

    move-object/from16 v0, p2

    if-eq v0, v5, :cond_2

    .line 1062
    const-string v10, "JY"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveToRightWithAnimation :: start, end = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    add-int/lit8 v10, v3, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1064
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1066
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1067
    new-instance v7, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1068
    .local v7, switcher:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x0

    int-to-float v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1070
    .local v2, a:Landroid/view/animation/Animation;
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1071
    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1072
    const-wide/16 v10, 0x32

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1073
    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mContext:Landroid/content/Context;

    const v11, 0x10a0005

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1075
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1076
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private prepareFling(I)V
    .locals 6
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x44fa

    .line 606
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    if-eq p1, v3, :cond_1

    move v0, v2

    .line 607
    .local v0, changingScreens:Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, focusedChild:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 610
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    .line 614
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTotalOffSet:I

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mCurrentX:I

    .line 616
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVel:F

    .line 617
    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTotalOffSet:I

    if-lez v3, :cond_2

    .line 619
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    .line 621
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mAccel:F

    .line 629
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTotalOffSet:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWeight:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX0:F

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareEaseInOut()V

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->invalidate()V

    .line 633
    return-void

    .line 606
    .end local v0           #changingScreens:Z
    .end local v1           #focusedChild:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    .restart local v0       #changingScreens:Z
    .restart local v1       #focusedChild:Landroid/view/View;
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTargetX:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mTotalOffSet:I

    .line 627
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mAccel:F

    goto :goto_1
.end method

.method private rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "src"
    .parameter "target"
    .parameter "nStart"
    .parameter "nEnd"
    .parameter "sourceParent"
    .parameter "targetParent"

    .prologue
    .line 989
    invoke-virtual {p6, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 990
    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 992
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rearrangeViews :: start, end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-le p3, p4, :cond_0

    .line 995
    invoke-virtual {p6, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 996
    invoke-virtual {p5, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1003
    :goto_0
    return-void

    .line 1000
    :cond_0
    invoke-virtual {p5, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1001
    invoke-virtual {p6, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v0

    .line 543
    .local v0, nScrollX:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v1

    .line 546
    .local v1, screenWidth:I
    if-le v0, v1, :cond_0

    .line 548
    move v0, v1

    .line 550
    :cond_0
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    div-int v2, v3, v1

    .line 552
    .local v2, whichScreen:I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareFling(I)V

    .line 553
    return-void
.end method


# virtual methods
.method EaseOutInterpolation()V
    .locals 4

    .prologue
    .line 678
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX0:F

    .line 679
    .local v0, x0:F
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWeight:F

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWeight:F

    div-float v1, v2, v3

    .line 680
    .local v1, x1:F
    sub-float v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX1:F

    .line 681
    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX0:F

    .line 682
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollTo(II)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    if-eq v0, v1, :cond_0

    .line 211
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 212
    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 229
    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-eq v8, v6, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    move v3, v6

    .line 230
    .local v3, fastDraw:Z
    :goto_0
    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    if-ne v8, v6, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->flingPageToRight()V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    .line 235
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 236
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getDrawingTime()J

    move-result-wide v7

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #count:I
    .end local v3           #fastDraw:Z
    .end local v4           #i:I
    :cond_0
    move v3, v7

    .line 229
    goto :goto_0

    .line 239
    .restart local v3       #fastDraw:Z
    :cond_1
    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mFling:I

    if-ne v8, v10, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->flingPageToLeft()V

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    .line 244
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 245
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getDrawingTime()J

    move-result-wide v7

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 250
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-ne v8, v10, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getDrawingTime()J

    move-result-wide v1

    .line 253
    .local v1, drawingTime:J
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 254
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 291
    .end local v1           #drawingTime:J
    :cond_3
    :goto_3
    return-void

    .line 259
    :cond_4
    if-eqz v3, :cond_7

    .line 261
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    if-ltz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v8

    if-lt v6, v8, :cond_6

    .line 263
    :cond_5
    const-string v6, "JY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchDraw :: currentScreen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 267
    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 268
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 269
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollToScreen(I)V

    goto :goto_3

    .line 272
    .end local v5           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getDrawingTime()J

    move-result-wide v1

    .line 274
    .restart local v1       #drawingTime:J
    iget v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    if-ltz v7, :cond_8

    iget v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_8

    iget v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 277
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 281
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    .line 283
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v0, :cond_3

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 349
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollToScreen(I)V

    .line 361
    :goto_0
    return v0

    .line 355
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollToScreen(I)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 372
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->locked:Z

    if-eqz v11, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v9

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-nez v11, :cond_0

    .line 388
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 389
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 391
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_3
    :goto_1
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-eqz v11, :cond_9

    move v2, v9

    .local v2, ret:Z
    :goto_2
    move v9, v2

    .line 443
    goto :goto_0

    .line 396
    .end local v2           #ret:Z
    :pswitch_0
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionX:F

    sub-float v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v4, v11

    .line 397
    .local v4, xDiff:I
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 398
    .local v7, yDiff:I
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchSlop:I

    if-le v4, v11, :cond_6

    move v5, v9

    .line 399
    .local v5, xMoved:Z
    :goto_3
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchSlop:I

    if-le v7, v11, :cond_7

    move v8, v9

    .line 401
    .local v8, yMoved:Z
    :goto_4
    if-nez v5, :cond_4

    if-eqz v8, :cond_3

    .line 403
    :cond_4
    if-eqz v5, :cond_5

    .line 405
    iput v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    .line 408
    :cond_5
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->allowLongPress:Z

    if-eqz v11, :cond_3

    .line 409
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->allowLongPress:Z

    .line 413
    iget v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, currentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentView:Landroid/view/View;
    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_6
    move v5, v10

    .line 398
    goto :goto_3

    .restart local v5       #xMoved:Z
    :cond_7
    move v8, v10

    .line 399
    goto :goto_4

    .line 421
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionX:F

    .line 422
    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionY:F

    .line 423
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->allowLongPress:Z

    .line 430
    iget-object v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v10

    :goto_5
    iput v11, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    goto :goto_1

    :cond_8
    move v11, v9

    goto :goto_5

    .line 435
    :pswitch_2
    iput v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    goto :goto_1

    :cond_9
    move v2, v10

    .line 439
    goto :goto_2

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v3

    .line 335
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 336
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 339
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 340
    add-int/2addr v1, v2

    .line 335
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 345
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 300
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 301
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 313
    .local v4, widthMode:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    .line 314
    .local v0, count:I
    const/4 v2, 0x0

    .line 316
    .local v2, maxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->setMeasuredDimension(II)V

    .line 326
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 782
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;

    .line 783
    .local v0, savedState:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 784
    iget v1, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 785
    iget v1, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 787
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 772
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 773
    .local v0, state:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    iput v1, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    .line 774
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 451
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->locked:Z

    if-eqz v6, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v8

    .line 454
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 455
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 457
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 460
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 462
    .local v5, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 469
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 470
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 474
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionX:F

    goto :goto_0

    .line 479
    :pswitch_1
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-ne v6, v8, :cond_0

    .line 482
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 483
    .local v2, deltaX:I
    iput v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->lastMotionX:F

    .line 485
    if-gez v2, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v6

    if-lez v6, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollBy(II)V

    goto :goto_0

    .line 490
    :cond_4
    if-lez v2, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v7

    sub-int v1, v6, v7

    .line 494
    .local v1, availableToScroll:I
    if-lez v1, :cond_0

    .line 495
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollBy(II)V

    goto :goto_0

    .line 502
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :pswitch_2
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    if-ne v6, v8, :cond_5

    .line 503
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 504
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 505
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 507
    .local v4, velocityX:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mNow:J

    .line 508
    const/16 v6, 0x1f4

    if-le v4, v6, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    if-lez v6, :cond_6

    .line 511
    iput v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocity:I

    .line 512
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareFling(I)V

    .line 524
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_5

    .line 525
    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 526
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 529
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :cond_5
    iput v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->touchState:I

    goto/16 :goto_0

    .line 514
    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #velocityX:I
    :cond_6
    const/16 v6, -0x1f4

    if-ge v4, v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 517
    neg-int v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocity:I

    .line 518
    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareFling(I)V

    goto :goto_1

    .line 521
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->snapToDestination()V

    goto :goto_1

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method prepareEaseInOut()V
    .locals 3

    .prologue
    const/high16 v2, 0x4348

    .line 651
    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mAccel:F

    .line 652
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVelocity:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mVel:F

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mX1:F

    .line 654
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mDuration:F

    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mDeltaT:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mRemainingTime:F

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mNow:J

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mWidth:F

    .line 657
    return-void
.end method

.method public rearrangeEasySettingItem(Landroid/view/View;Landroid/view/View;)V
    .locals 30
    .parameter "src"
    .parameter "target"

    .prologue
    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v29

    .line 933
    .local v29, screenCount:I
    const/16 v17, 0x0

    .local v17, targetParent:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    .line 934
    .local v7, sourceParent:Landroid/view/ViewGroup;
    const/4 v5, -0x1

    .local v5, nStart:I
    const/4 v6, -0x1

    .line 935
    .local v6, nEnd:I
    const/16 v27, 0x0

    .line 936
    .local v27, nCase:I
    const/16 v28, 0x0

    .local v28, screen:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    .line 938
    .local v25, childGroup:Landroid/view/ViewGroup;
    const/4 v2, -0x1

    if-ne v5, v2, :cond_0

    .line 940
    move-object/from16 v7, v25

    .line 941
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 943
    :cond_0
    const/4 v2, -0x1

    if-ne v6, v2, :cond_1

    .line 945
    move-object/from16 v17, v25

    .line 946
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 936
    :cond_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 950
    .end local v25           #childGroup:Landroid/view/ViewGroup;
    :cond_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    const/4 v2, -0x1

    if-eq v5, v2, :cond_3

    const/4 v2, -0x1

    if-ne v6, v2, :cond_4

    .line 985
    :cond_3
    :goto_1
    return-void

    .line 955
    :cond_4
    move-object/from16 v0, v17

    if-ne v0, v7, :cond_6

    .line 957
    if-le v5, v6, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 958
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_1

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 960
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_1

    .line 964
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 966
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 967
    .local v10, e:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 968
    .local v26, f:Landroid/view/View;
    const/4 v12, 0x4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToLast(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    .line 969
    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v26

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 970
    const/4 v5, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v5

    move/from16 v16, v6

    .line 971
    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_1

    .line 973
    .end local v10           #e:Landroid/view/View;
    .end local v26           #f:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    if-nez v2, :cond_3

    .line 975
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 976
    .restart local v10       #e:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 977
    .local v13, f:Landroid/view/View;
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v14, v5

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToFirst(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    .line 978
    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v10

    move-object/from16 v23, v7

    move-object/from16 v24, v17

    invoke-direct/range {v18 .. v24}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 979
    const/4 v5, 0x4

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v17

    .line 980
    invoke-direct/range {v18 .. v23}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto/16 :goto_1
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareFling(I)V

    .line 798
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 807
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->prepareFling(I)V

    .line 808
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 9
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 692
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    if-eq p1, v0, :cond_3

    const/4 v6, 0x1

    .line 693
    .local v6, changingScreens:Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 697
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 698
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 702
    .local v8, newX:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 704
    .local v3, delta:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    mul-int/lit8 v5, v4, 0x64

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mListner:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mListner:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;->onChangedChildView(I)V

    .line 711
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->currentScreen:I

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->invalidate()V

    .line 713
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_3
    move v6, v2

    .line 692
    goto :goto_0
.end method

.method public setChangedChildViewLisnter(Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;)V
    .locals 0
    .parameter "mListner"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->mListner:Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;

    .line 1130
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 2
    .parameter "currentScreen"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->scrollTo(II)V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->invalidate()V

    .line 180
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v0

    .line 200
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public showDefaultScreen()V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->defaultScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->getChildCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->nextScreen:I

    .line 189
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;->setCurrentScreen(I)V

    .line 190
    return-void
.end method
