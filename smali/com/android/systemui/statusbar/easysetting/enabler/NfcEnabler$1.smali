.class Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 44
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, extraState:I
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nfc state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->getMdmPolicyDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    if-ne v1, v5, :cond_2

    .line 49
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->buttonSetOn(Z)V

    .line 60
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->checkMdmPolicy()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->access$000(Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;)V

    .line 63
    .end local v1           #extraState:I
    :cond_1
    return-void

    .line 51
    .restart local v1       #extraState:I
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->buttonSetOn(Z)V

    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->buttonSetOn(Z)V

    goto :goto_0

    .line 57
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/easysetting/enabler/NfcEnabler;->buttonSetOn(Z)V

    goto :goto_0
.end method
