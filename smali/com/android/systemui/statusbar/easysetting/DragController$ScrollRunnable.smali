.class Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/DragController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 636
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$000(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$000(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/DragScroller;->scrollLeft()V

    .line 646
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mScrollState:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$102(Lcom/android/systemui/statusbar/easysetting/DragController;I)I

    .line 648
    :cond_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mDragScroller:Lcom/android/systemui/statusbar/easysetting/DragScroller;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$000(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 651
    iput p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ScrollRunnable;->mDirection:I

    .line 652
    return-void
.end method
