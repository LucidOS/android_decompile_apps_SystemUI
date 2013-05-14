.class Lcom/android/systemui/recent/RecentsPanelView$4;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 438
    :goto_0
    return v0

    .line 416
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->removeAllTask()V
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$900(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 420
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->startTaskManager()V
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1100(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 429
    sput-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->start_activity:Z

    .line 430
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    goto :goto_0

    .line 435
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showTutorial(Z)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x7f0c0115
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
