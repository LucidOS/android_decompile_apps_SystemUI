.class Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;
.super Ljava/lang/Object;
.source "RoamingDataPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$000(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Landroid/app/AlertDialog;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    const-string v3, "iskydataconnection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$102(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;Lcom/android/internal/telephony/ISkyDataConnection;)Lcom/android/internal/telephony/ISkyDataConnection;

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->isDebugMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$200(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RoamingDataPopup"

    const-string v3, "request active PDPContext "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$100(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataOnRoamingEnabledUI(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$300(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->finish()V

    .line 236
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->isDebugMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$200(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "RoamingDataPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobile data operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
