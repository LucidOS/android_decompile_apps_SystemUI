.class Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/high16 v5, -0x8000

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive :: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, btState:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->getMdmPolicyDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->completeProgress()V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->buttonSetOn(Z)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->checkMdmPolicy()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->access$000(Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;)V

    .line 112
    .end local v1           #btState:I
    :cond_0
    return-void

    .line 102
    .restart local v1       #btState:I
    :cond_1
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-ne v1, v5, :cond_3

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->completeProgress()V

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->buttonSetOn(Z)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/BluetoothEnabler;->showProgress()V

    goto :goto_0
.end method
