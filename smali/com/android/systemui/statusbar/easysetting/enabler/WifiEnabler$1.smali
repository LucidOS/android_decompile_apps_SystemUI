.class Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;
.super Landroid/os/Handler;
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
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 69
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->checkWifiConfig()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$000(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)I

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->jumpToAPList()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$100(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v2, v2, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2c9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 82
    .local v0, wifiInfos:Landroid/net/wifi/WifiInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #getter for: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->isDebugMode:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$200(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi Connection Info\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->jumpToAPList()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$100(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x2c9 -> :sswitch_1
        0x38f -> :sswitch_0
    .end sparse-switch
.end method
