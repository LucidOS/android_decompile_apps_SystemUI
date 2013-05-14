.class Lcom/android/systemui/recent/RecentsPanelView$9;
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
    .line 871
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$9;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 874
    const/4 v2, 0x0

    .line 876
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 896
    :goto_0
    if-eqz v2, :cond_0

    .line 898
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 899
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$9;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 903
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$9;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_1
    sput-boolean v6, Lcom/android/systemui/recent/RecentsPanelView;->start_activity:Z

    .line 910
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$9;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 913
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 879
    :sswitch_0
    const-string v2, "com.ktmusic.geniemusic"

    .line 880
    goto :goto_0

    .line 883
    :sswitch_1
    const-string v2, "com.kt.otv"

    .line 884
    goto :goto_0

    .line 887
    :sswitch_2
    const-string v2, "kt.navi"

    .line 888
    goto :goto_0

    .line 891
    :sswitch_3
    const-string v2, "com.kt.olleh.storefront"

    goto :goto_0

    .line 904
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 906
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$9;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900db

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x7f0c0047 -> :sswitch_0
        0x7f0c00b4 -> :sswitch_1
        0x7f0c00b5 -> :sswitch_2
        0x7f0c00b6 -> :sswitch_3
    .end sparse-switch
.end method
