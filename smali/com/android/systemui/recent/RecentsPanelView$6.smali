.class Lcom/android/systemui/recent/RecentsPanelView$6;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->setShortCutBtn()V
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
    .line 732
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 735
    sput-boolean v3, Lcom/android/systemui/recent/RecentsPanelView;->start_activity:Z

    .line 736
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 737
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alwaysontop"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 738
    .local v0, service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopManager;->showAlwaysOnTopPicker()V

    .line 739
    return-void
.end method
