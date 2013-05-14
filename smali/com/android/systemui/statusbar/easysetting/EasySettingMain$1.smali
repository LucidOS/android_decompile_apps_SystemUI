.class Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;
.super Landroid/content/BroadcastReceiver;
.source "EasySettingMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingMain;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingMain;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mEasySetting:Lcom/android/systemui/statusbar/easysetting/EasySetting;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)Lcom/android/systemui/statusbar/easysetting/EasySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->updateEnabled()V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingMain$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingMain;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/EasySettingMain;->mSimpleEasySettingPort:Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/SimpleEasySetting;->updateEnabled()V

    .line 212
    :cond_0
    return-void
.end method
