.class public Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;
.super Landroid/widget/LinearLayout;
.source "EasySettingEditOnOff.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/ModeChanger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;,
        Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;
    }
.end annotation


# instance fields
.field private mDimBtn:Landroid/widget/ImageView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mModeState:I

.field private mOffAnimation:Landroid/view/animation/Animation;

.field private mOffStatusBtn:Landroid/widget/ImageView;

.field private mOn:Z

.field private mOnAnimation:Landroid/view/animation/Animation;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnOffClickListener:Landroid/view/View$OnClickListener;

.field private mOnStatusBtn:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressBarEnabled:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyRotation(Ljava/lang/Boolean;FF)V
    .locals 9
    .parameter "isOn"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x4000

    .line 314
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 317
    .local v8, view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    .line 325
    .local v7, otherView:Landroid/view/View;
    :goto_0
    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 326
    .local v3, centerX:F
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 331
    .local v4, centerY:F
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;

    const/high16 v5, 0x4120

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 333
    .local v0, rotation:Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setDuration(J)V

    .line 334
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setFillAfter(Z)V

    .line 335
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 336
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 339
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    return-void

    .line 321
    .end local v0           #rotation:Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;
    .end local v3           #centerX:F
    .end local v4           #centerY:F
    .end local v7           #otherView:Landroid/view/View;
    .end local v8           #view:Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    .line 322
    .restart local v8       #view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .restart local v7       #otherView:Landroid/view/View;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 70
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setWillNotDraw(Z)V

    .line 71
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOrientation(I)V

    .line 72
    const/high16 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setDescendantFocusability(I)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 79
    .local v1, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f03000f

    invoke-virtual {v1, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, ssOnOff:Landroid/view/View;
    const v8, 0x7f0c007c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    .line 82
    const v8, 0x7f0c007a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 84
    const v8, 0x7f0c007e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mDimBtn:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->isEnabled()Z

    move-result v8

    if-ne v8, v11, :cond_6

    .line 86
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    const v8, 0x7f0c007d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    .line 96
    const v8, 0x7f0c007f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mTitle:Landroid/widget/TextView;

    .line 98
    sget-object v8, Lcom/android/systemui/R$styleable;->EasySettingOnOff:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 101
    .local v3, onDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 102
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 105
    .local v2, offDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 106
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarEnabled:Z

    .line 110
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarEnabled:Z

    if-nez v8, :cond_2

    .line 111
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 116
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_3
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 120
    .local v4, resource:I
    if-lez v4, :cond_4

    .line 121
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnAnimation:Landroid/view/animation/Animation;

    .line 124
    :cond_4
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 125
    if-lez v4, :cond_5

    .line 126
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffAnimation:Landroid/view/animation/Animation;

    .line 129
    :cond_5
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 134
    .local v6, state:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->completeProgress()V

    .line 137
    invoke-virtual {p0, v6, v11}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setOn(ZZ)V

    .line 142
    return-void

    .line 88
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #offDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #onDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #resource:I
    .end local v6           #state:Z
    .end local v7           #title:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public completeProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBarEnabled:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setEnabled(Z)V

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    return v0
.end method

.method public onEditMode()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mModeState:I

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->invalidate()V

    .line 300
    return-void
.end method

.method public onFinishEditMode()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mModeState:I

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->invalidate()V

    .line 294
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 159
    if-ne p1, v3, :cond_1

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    if-ne v0, v3, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 181
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOn(ZZ)V
    .locals 6
    .parameter "state"
    .parameter "force"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0xc2

    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    .line 191
    .local v0, oldState:Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    .line 193
    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 194
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x42b4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->applyRotation(Ljava/lang/Boolean;FF)V

    .line 195
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOn:Z

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 247
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 263
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
