.class public Lcom/android/systemui/statusbar/easysetting/DragView;
.super Landroid/view/View;
.source "DragView.java"


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mAnimationScale:F

    .line 78
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mWindowManager:Landroid/view/WindowManager;

    .line 80
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v5, scale:Landroid/graphics/Matrix;
    int-to-float v7, p7

    .line 82
    .local v7, scaleFactor:F
    const/high16 v0, 0x4220

    add-float/2addr v0, v7

    div-float v7, v0, v7

    iput v7, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mScale:F

    .line 83
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 84
    const/4 v6, 0x1

    move-object v0, p2

    move v1, p5

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    add-int/lit8 v0, p3, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationX:I

    .line 88
    add-int/lit8 v0, p4, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationY:I

    .line 89
    return-void
.end method


# virtual methods
.method move(II)V
    .locals 2
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 203
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/easysetting/DragView;->mAnimationScale:F

    .line 107
    .local v11, scale:F
    const v13, 0x3f7fbe77

    cmpg-float v13, v11, v13

    if-gez v13, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v2, v13

    .line 109
    .local v2, height:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v12, v13

    .line 110
    .local v12, width:F
    mul-float v13, v12, v11

    sub-float v13, v12, v13

    const/high16 v14, 0x4000

    div-float v6, v13, v14

    .line 111
    .local v6, offset1:F
    mul-float v13, v2, v11

    sub-float v13, v2, v13

    const/high16 v14, 0x4000

    div-float v7, v13, v14

    .line 112
    .local v7, offset2:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 115
    .end local v2           #height:F
    .end local v6           #offset1:F
    .end local v7           #offset2:F
    .end local v12           #width:F
    :cond_0
    new-instance v10, Landroid/graphics/BlurMaskFilter;

    const/high16 v13, 0x40a0

    mul-float/2addr v13, v11

    sget-object v14, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v10, v13, v14}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 116
    .local v10, sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v3, mBlurPaint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 118
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 120
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 121
    .local v5, mTempOffset:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v3, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, glow:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    const/16 v14, 0xc8

    invoke-static {v13, v14}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v9

    .line 125
    .local v9, sCoarseClipTable:Landroid/graphics/MaskFilter;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 126
    .local v4, mHolographicPaint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 127
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 129
    const/16 v13, 0x96

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    const/16 v13, 0x57

    const/16 v14, 0xaf

    const/16 v15, 0xb0

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/4 v13, 0x0

    aget v13, v5, v13

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13, v14, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v8, p2:Landroid/graphics/Paint;
    const/16 v13, 0x64

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 136
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 8
    .parameter "windowToken"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v1, -0x2

    .line 169
    const/4 v7, -0x3

    .line 171
    .local v7, pixelFormat:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationX:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mRegistrationY:I

    sub-int v4, p3, v2

    const/16 v5, 0x7e4

    const v6, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 181
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 182
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 183
    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 188
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 190
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method
