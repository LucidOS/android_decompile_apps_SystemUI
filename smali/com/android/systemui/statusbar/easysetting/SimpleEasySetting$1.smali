.class Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;
.super Landroid/content/BroadcastReceiver;
.source "SimpleEasySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;I)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    #calls: Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "change_mdm_policy_data_network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    const/4 v2, 0x3

    #calls: Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;I)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v1, "change_mdm_policy_gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    const/4 v2, 0x5

    #calls: Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;I)V

    goto :goto_0
.end method
