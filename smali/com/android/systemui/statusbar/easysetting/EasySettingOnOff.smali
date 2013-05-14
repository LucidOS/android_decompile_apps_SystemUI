.class public Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
.super Landroid/widget/LinearLayout;
.source "EasySettingOnOff.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/DragSource;
.implements Lcom/android/systemui/statusbar/easysetting/DropTarget;
.implements Lcom/android/systemui/statusbar/easysetting/ModeChanger;


# instance fields
.field private mDimBtn:Landroid/widget/ImageView;

.field private mExtraStatusBtn:Landroid/widget/ImageView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mMarkImage:Landroid/graphics/drawable/BitmapDrawable;

.field mModeState:I

.field private mNumberOfState:I

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

.field private mState:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mNumberOfState:I

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOn:Z

    .line 353
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    .line 369
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->currentStateView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->changeStateButton(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private changeStateButton(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v4, 0xc2

    const/16 v3, 0x8

    .line 263
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateButton :: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private convertStateToBool(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStateToInteger(Z)I
    .locals 1
    .parameter "isOn"

    .prologue
    .line 297
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private currentStateView()Landroid/view/View;
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 434
    :goto_0
    return-object v0

    .line 428
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private currentStateView(I)Landroid/view/View;
    .locals 1
    .parameter "state"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 419
    :goto_0
    return-object v0

    .line 413
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setWillNotDraw(Z)V

    .line 81
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOrientation(I)V

    .line 82
    const/high16 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setDescendantFocusability(I)V

    .line 85
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mModeState:I

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 89
    .local v2, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f03000f

    invoke-virtual {v2, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 91
    .local v6, ssOnOff:Landroid/view/View;
    const v9, 0x7f0c007c

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    .line 92
    const v9, 0x7f0c007a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 93
    const v9, 0x7f0c007b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    .line 95
    const v9, 0x7f0c007e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->isEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 97
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    const v9, 0x7f0c007d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    .line 112
    const v9, 0x7f0c007f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    .line 113
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    sget-object v9, Lcom/android/systemui/R$styleable;->EasySettingOnOff:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 117
    .local v4, onDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 118
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    .local v3, offDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 122
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    .local v1, extraDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 127
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mNumberOfState:I

    .line 128
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_2
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarEnabled:Z

    .line 132
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarEnabled:Z

    if-nez v9, :cond_3

    .line 133
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 138
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_4
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 142
    .local v5, resource:I
    if-lez v5, :cond_5

    .line 143
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnAnimation:Landroid/view/animation/Animation;

    .line 146
    :cond_5
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 147
    if-lez v5, :cond_6

    .line 148
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffAnimation:Landroid/view/animation/Animation;

    .line 151
    :cond_6
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 156
    .local v7, state:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->completeProgress()V

    .line 159
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->convertStateToInteger(Z)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(IZ)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mMarkImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    return-void

    .line 99
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #extraDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #offDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #onDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #resource:I
    .end local v7           #state:Z
    .end local v8           #title:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)Z
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 585
    const-string v1, "JY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptDrop :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 586
    check-cast v0, Landroid/view/View;

    .line 587
    .local v0, srcView:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 588
    const/4 v1, 0x0

    .line 589
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public completeProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarEnabled:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->convertStateToBool(I)Z

    move-result v0

    return v0
.end method

.method public nextState()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->nextState(I)I

    move-result v0

    return v0
.end method

.method public nextState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 310
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mNumberOfState:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public onDragEnter(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 562
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnter :: x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public onDragExit(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 577
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragExit :: x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method public onDragOver(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 571
    return-void
.end method

.method public onDrop(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 554
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 607
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropCompleted :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method public onEditMode()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mModeState:I

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->invalidate()V

    .line 403
    return-void
.end method

.method public onFinishEditMode()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mModeState:I

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->invalidate()V

    .line 397
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mExtraStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->changeStateButton(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 193
    return-void

    .line 189
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->changeStateButton(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOn(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->convertStateToInteger(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(IZ)V

    .line 199
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 351
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 367
    return-void
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(IZ)V

    .line 225
    return-void
.end method

.method public setState(IZ)V
    .locals 5
    .parameter "state"
    .parameter "force"

    .prologue
    .line 227
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    .line 228
    .local v0, oldState:I
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I

    .line 229
    const-string v2, "JY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setOn :: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 231
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->currentStateView(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "rotationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 233
    .local v1, testAnim:Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    .end local v1           #testAnim:Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 231
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0xc2t
    .end array-data
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBarEnabled:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setEnabled(Z)V

    goto :goto_0
.end method
