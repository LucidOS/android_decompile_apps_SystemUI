.class Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.pantech.intent.action.AUTO_SYNC_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.pantech.intent.action.AUTO_SYNC_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/easysetting/enabler/SyncEnabler;->buttonSetOn(Z)V

    .line 92
    :cond_1
    return-void
.end method
