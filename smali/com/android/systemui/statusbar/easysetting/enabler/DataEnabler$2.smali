.class Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.skt.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.skt.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.intent.action.ALWAYS_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.intent.action.ALWAYS_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabledMdmCheck(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->access$000(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V

    .line 183
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->checkMdmPolicy()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->access$400(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V

    .line 185
    return-void

    .line 160
    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateEnabledMdmCheckByAirplaneMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->access$100(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_3
    const-string v1, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateRoamingEnabledMdmCheck(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->access$200(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_5
    const-string v1, "com.skt.intent.action.ROAMING_DATA_MENU_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.skt.intent.action.ROAMING_DATA_MENU_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$2;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->updateRoamingUsage(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;->access$300(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_7
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method
