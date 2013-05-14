.class public Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
.super Landroid/widget/LinearLayout;
.source "QuickSettingOnOff.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/DragSource;
.implements Lcom/android/systemui/statusbar/easysetting/DropTarget;
.implements Lcom/android/systemui/statusbar/easysetting/ModeChanger;


# instance fields
.field private mDimBtn:Landroid/widget/ImageView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mMarkImage:Landroid/graphics/drawable/BitmapDrawable;

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
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOn:Z

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;-><init>(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 65
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOrientation(I)V

    .line 67
    const/high16 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setDescendantFocusability(I)V

    .line 69
    iput v10, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mModeState:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030018

    invoke-virtual {v1, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, ssOnOff:Landroid/view/View;
    const v8, 0x7f0c007c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    .line 76
    const v8, 0x7f0c007a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    .line 78
    const v8, 0x7f0c007e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->isEnabled()Z

    move-result v8

    if-ne v8, v11, :cond_6

    .line 80
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    const v8, 0x7f0c007d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    .line 89
    const v8, 0x7f0c007f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mTitle:Landroid/widget/TextView;

    .line 90
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    sget-object v8, Lcom/android/systemui/R$styleable;->EasySettingOnOff:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    .local v3, onDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 99
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    .local v2, offDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 103
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarEnabled:Z

    .line 107
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarEnabled:Z

    if-nez v8, :cond_2

    .line 108
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 113
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_3
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 117
    .local v4, resource:I
    if-lez v4, :cond_4

    .line 118
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnAnimation:Landroid/view/animation/Animation;

    .line 121
    :cond_4
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 122
    if-lez v4, :cond_5

    .line 123
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffAnimation:Landroid/view/animation/Animation;

    .line 126
    :cond_5
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 131
    .local v6, state:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->completeProgress()V

    .line 134
    invoke-virtual {p0, v6, v11}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setOn(ZZ)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200f9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mMarkImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    return-void

    .line 82
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #offDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #onDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #resource:I
    .end local v6           #state:Z
    .end local v7           #title:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

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
    .line 418
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

    .line 419
    check-cast v0, Landroid/view/View;

    .line 420
    .local v0, srcView:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 421
    const/4 v1, 0x0

    .line 422
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public completeProgress()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBarEnabled:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setEnabled(Z)V

    goto :goto_0
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
    .line 393
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

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
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
    .line 410
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

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
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
    .line 403
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
    .line 385
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

    .line 387
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 443
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

    .line 444
    return-void
.end method

.method public onEditMode()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mModeState:I

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->invalidate()V

    .line 267
    return-void
.end method

.method public onFinishEditMode()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mModeState:I

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->invalidate()V

    .line 261
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffStatusBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mDimBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOn(ZZ)V
    .locals 3
    .parameter "state"
    .parameter "force"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOn:Z

    .line 172
    .local v0, oldState:Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOn:Z

    .line 173
    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 174
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOn:Z

    if-eqz v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOffAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnStatusBtn:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 216
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 231
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
