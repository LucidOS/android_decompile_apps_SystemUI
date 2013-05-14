.class Lcom/android/systemui/recent/RecentsPanelView$10;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
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
    .line 919
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$10;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 923
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "com.uplus.onphone"

    aput-object v5, v0, v8

    const-string v5, "com.uplus.onphone.page.LoadingPage"

    aput-object v5, v0, v7

    .line 924
    .local v0, HDTV:[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "lg.uplusbox"

    aput-object v5, v1, v8

    const-string v5, "lg.uplusbox.TitleActivity"

    aput-object v5, v1, v7

    .line 926
    .local v1, UBOX:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 928
    .local v2, appInfo_lgu:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 941
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 942
    .local v4, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 943
    aget-object v5, v2, v8

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const/4 v5, 0x1

    :try_start_0
    sput-boolean v5, Lcom/android/systemui/recent/RecentsPanelView;->start_activity:Z

    .line 947
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$10;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_1
    sput-boolean v7, Lcom/android/systemui/recent/RecentsPanelView;->start_activity:Z

    .line 992
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$10;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v5, v8, v7}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 994
    return-void

    .line 931
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_0
    move-object v2, v0

    .line 932
    goto :goto_0

    .line 935
    :pswitch_1
    move-object v2, v1

    goto :goto_0

    .line 948
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 949
    .local v3, e:Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$10;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0900db

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 928
    :pswitch_data_0
    .packed-switch 0x7f0c0044
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
