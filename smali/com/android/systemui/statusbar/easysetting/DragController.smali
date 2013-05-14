.class public Lcom/android/systemui/statusbar/easysetting/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;,
        Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;,
        Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDirty:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;

.field private mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

.field private mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/easysetting/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

.field private mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/easysetting/DragController;->DRAG_ACTION_MOVE:I

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/easysetting/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mCoordinatesTemp:[I

    .line 85
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 622
    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    .line 623
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;-><init>(Lcom/android/systemui/statusbar/easysetting/DragController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    .line 654
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;-><init>(Lcom/android/systemui/statusbar/easysetting/DragController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    .line 160
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 161
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollZone:I

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDirty:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/easysetting/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/easysetting/DragController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 552
    if-ge p0, p1, :cond_0

    .line 557
    .end local p1
    :goto_0
    return p1

    .line 554
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    .line 555
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 557
    goto :goto_0
.end method

.method private drop(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 491
    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mCoordinatesTemp:[I

    .line 492
    .local v8, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v8}, Lcom/android/systemui/statusbar/easysetting/DragController;->findDropTarget(II[I)Lcom/android/systemui/statusbar/easysetting/DropTarget;

    move-result-object v0

    .line 493
    .local v0, dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    if-eqz v0, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDirty(Z)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    iput-object v2, v1, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    iput-object v0, v1, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDragExit(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->acceptDrop(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDrop(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/android/systemui/statusbar/easysetting/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 516
    :goto_0
    return v1

    .line 512
    .restart local v0       #dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    invoke-interface {v1, v0, v10}, Lcom/android/systemui/statusbar/easysetting/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 513
    goto :goto_0

    .restart local v0       #dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    :cond_2
    move v1, v10

    .line 516
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 310
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;->onDragEnd()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/DragView;->remove()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    .line 322
    :cond_2
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/systemui/statusbar/easysetting/DropTarget;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 522
    .local v3, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 523
    .local v1, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/easysetting/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 524
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 525
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .line 526
    .local v4, target:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 527
    invoke-interface {v4, p3}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->getLocationOnScreen([I)V

    .line 528
    aget v5, p3, v8

    invoke-interface {v4}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-interface {v4}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 529
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    aget v5, p3, v8

    sub-int v5, p1, v5

    aput v5, p3, v8

    .line 531
    aget v5, p3, v9

    sub-int v5, p2, v5

    aput v5, p3, v9

    .line 536
    .end local v4           #target:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    :goto_1
    return-object v4

    .line 524
    .restart local v4       #target:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 536
    .end local v4           #target:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 257
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 260
    .local v3, willNotCache:Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 265
    .local v2, color:I
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 267
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 274
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 281
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 282
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 546
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/systemui/statusbar/easysetting/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/DragController;->endDrag()V

    .line 306
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDirty:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 330
    .local v0, action:I
    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/DragController;->recordScreenSize()V

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/systemui/statusbar/easysetting/DragController;->clamp(III)I

    move-result v1

    .line 335
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/systemui/statusbar/easysetting/DragController;->clamp(III)I

    move-result v2

    .line 337
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    return v3

    .line 343
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownX:F

    .line 344
    int-to-float v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownY:F

    .line 345
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    goto :goto_0

    .line 350
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    if-eqz v3, :cond_1

    .line 351
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/easysetting/DragController;->drop(FF)Z

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/DragController;->endDrag()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 375
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    if-nez v1, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 486
    :goto_0
    return v1

    .line 378
    :cond_0
    iget-object v13, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollView:Landroid/view/View;

    .line 380
    .local v13, scrollView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 381
    .local v9, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->clamp(III)I

    move-result v11

    .line 382
    .local v11, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragController;->clamp(III)I

    move-result v12

    .line 384
    .local v12, screenY:I
    packed-switch v9, :pswitch_data_0

    .line 486
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 387
    :pswitch_0
    int-to-float v1, v11

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownX:F

    .line 388
    int-to-float v1, v12

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownY:F

    .line 390
    if-eqz v13, :cond_1

    .line 393
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollZone:I

    if-lt v11, v1, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le v11, v1, :cond_3

    .line 394
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 397
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    goto :goto_1

    .line 404
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/DragView;->move(II)V

    .line 407
    iget-object v10, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mCoordinatesTemp:[I

    .line 408
    .local v10, coordinates:[I
    invoke-direct {p0, v11, v12, v10}, Lcom/android/systemui/statusbar/easysetting/DragController;->findDropTarget(II[I)Lcom/android/systemui/statusbar/easysetting/DropTarget;

    move-result-object v0

    .line 410
    .local v0, dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    if-eqz v0, :cond_7

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-ne v1, v0, :cond_5

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDragOver(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    .line 437
    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .line 449
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollZone:I

    if-ge v11, v1, :cond_8

    .line 450
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    if-nez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    .line 453
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->setDirection(I)V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-eqz v1, :cond_6

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDragExit(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDragEnter(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    if-eqz v1, :cond_4

    .line 423
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/DragController;->setDirty(Z)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    iput-object v2, v1, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    iput-object v0, v1, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 432
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-eqz v1, :cond_4

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mLastDropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/easysetting/DropTarget;->onDragExit(Lcom/android/systemui/statusbar/easysetting/DragSource;IIIILcom/android/systemui/statusbar/easysetting/DragView;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 456
    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le v11, v1, :cond_9

    .line 457
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    if-nez v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->setDirection(I)V

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 465
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 466
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->setDirection(I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 475
    .end local v0           #dropTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;
    .end local v10           #coordinates:[I
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    if-eqz v1, :cond_a

    .line 477
    int-to-float v1, v11

    int-to-float v2, v12

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController;->drop(FF)Z

    .line 479
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/easysetting/DragController;->endDrag()V

    goto/16 :goto_1

    .line 483
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllDropTargets()V
    .locals 1

    .prologue
    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 598
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .parameter "d"

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDirty:Z

    .line 613
    return-void
.end method

.method public setDragListener(Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    .line 570
    return-void
.end method

.method public setDragScoller(Lcom/android/systemui/statusbar/easysetting/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;

    .line 627
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollView:Landroid/view/View;

    .line 630
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V
    .locals 12
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "textureLeft"
    .parameter "textureTop"
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 226
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 230
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 232
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-interface {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;->onDragStart(Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V

    .line 236
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownX:F

    float-to-int v4, v4

    sub-int v6, v4, p2

    .line 237
    .local v6, registrationX:I
    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownY:F

    float-to-int v4, v4

    sub-int v7, v4, p3

    .line 239
    .local v7, registrationY:I
    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownX:F

    int-to-float v5, p2

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetX:F

    .line 240
    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownY:F

    int-to-float v5, p3

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mTouchOffsetY:F

    .line 242
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragging:Z

    .line 243
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    .line 244
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragInfo:Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x15

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 247
    new-instance v3, Lcom/android/systemui/statusbar/easysetting/DragView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mContext:Landroid/content/Context;

    move-object v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/easysetting/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mDragView:Lcom/android/systemui/statusbar/easysetting/DragView;

    .line 249
    .local v3, dragView:Lcom/android/systemui/statusbar/easysetting/DragView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mWindowToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownX:F

    float-to-int v5, v5

    iget v8, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mMotionDownY:F

    float-to-int v8, v8

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/systemui/statusbar/easysetting/DragView;->show(Landroid/os/IBinder;II)V

    .line 250
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V
    .locals 13
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mOriginator:Landroid/view/View;

    move-object v1, p1

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/easysetting/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 181
    .local v2, b:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/easysetting/DragController;->mCoordinatesTemp:[I

    .line 187
    .local v12, loc:[I
    invoke-virtual {p1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 188
    const/4 v1, 0x0

    aget v3, v12, v1

    .line 189
    .local v3, screenX:I
    const/4 v1, 0x1

    aget v4, v12, v1

    .line 192
    .local v4, screenY:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/android/systemui/statusbar/easysetting/DragController;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/systemui/statusbar/easysetting/DragSource;Ljava/lang/Object;I)V

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    sget v1, Lcom/android/systemui/statusbar/easysetting/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
