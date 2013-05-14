.class Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;
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
    name = "ArrangeRunnable"
.end annotation


# instance fields
.field mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

.field mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/DragController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/DragController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 660
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    .line 662
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    .line 663
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$200(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mListener:Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$200(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mSource:Lcom/android/systemui/statusbar/easysetting/DragSource;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->mTarget:Lcom/android/systemui/statusbar/easysetting/DropTarget;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/DragController$DragListener;->onDragEnter(Lcom/android/systemui/statusbar/easysetting/DragSource;Lcom/android/systemui/statusbar/easysetting/DropTarget;)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$300(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$400(Lcom/android/systemui/statusbar/easysetting/DragController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;->this$0:Lcom/android/systemui/statusbar/easysetting/DragController;

    #getter for: Lcom/android/systemui/statusbar/easysetting/DragController;->mArrangeRunnable:Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/DragController;->access$300(Lcom/android/systemui/statusbar/easysetting/DragController;)Lcom/android/systemui/statusbar/easysetting/DragController$ArrangeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    :cond_0
    return-void
.end method
