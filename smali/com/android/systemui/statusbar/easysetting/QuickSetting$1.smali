.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

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

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSetting;I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v1, "change_mdm_policy_wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #calls: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSetting;I)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "com.android.bluetooth.action.UPDATE_BT_MDM_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    const/4 v2, 0x4

    #calls: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSetting;I)V

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "change_mdm_policy_nfc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    const/4 v2, 0x6

    #calls: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->checkMdmPolicy(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSetting;I)V

    goto :goto_0
.end method
