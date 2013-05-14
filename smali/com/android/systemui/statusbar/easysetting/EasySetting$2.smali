.class Lcom/android/systemui/statusbar/easysetting/EasySetting$2;
.super Landroid/content/BroadcastReceiver;
.source "EasySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

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

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0

    .line 255
    :cond_2
    const-string v1, "change_mdm_policy_tethering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x2

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0

    .line 259
    :cond_3
    const-string v1, "change_mdm_policy_data_network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x3

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0

    .line 263
    :cond_4
    const-string v1, "com.android.bluetooth.action.UPDATE_BT_MDM_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x4

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0

    .line 267
    :cond_5
    const-string v1, "change_mdm_policy_gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x5

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0

    .line 271
    :cond_6
    const-string v1, "change_mdm_policy_nfc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    const/4 v2, 0x6

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySetting;I)V

    goto :goto_0
.end method
