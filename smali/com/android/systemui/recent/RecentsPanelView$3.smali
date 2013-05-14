.class Lcom/android/systemui/recent/RecentsPanelView$3;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->showTutorial(Z)V
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
    .line 363
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const v2, 0x7f0c00ad

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 366
    .local v0, mAOTBtn:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->relative_tutorial:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #setter for: Lcom/android/systemui/recent/RecentsPanelView;->isTutorial:Z
    invoke-static {v1, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$802(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    .line 370
    return-void
.end method
