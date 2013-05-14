.class Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, wifiState:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getMdmPolicyDisabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->completeProgress()V

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->buttonSetOn(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$300(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v2, v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v3, v3, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2c9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #setter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z
    invoke-static {v2, v6}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$302(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)Z

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setEnabled(Z)V

    .line 186
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->checkMdmPolicy()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$500(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    .line 189
    .end local v1           #wifiState:I
    :cond_2
    return-void

    .line 175
    .restart local v1       #wifiState:I
    :cond_3
    if-eq v1, v7, :cond_4

    if-ne v1, v3, :cond_5

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->completeProgress()V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->buttonSetOn(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #setter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->wifi_state_lock:Z
    invoke-static {v2, v6}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$302(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)Z

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->isEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mQuickButton:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->setEnabled(Z)V

    goto :goto_0

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->showProgress()V

    goto :goto_0
.end method
