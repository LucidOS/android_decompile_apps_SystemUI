.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;
.super Ljava/lang/Object;
.source "QuickSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSetting;->registerQuickSettingClick()V
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
    .line 361
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, enabler:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
    const/4 v2, 0x0

    .line 366
    .local v2, state:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$200(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mManager:Lcom/android/systemui/statusbar/easysetting/EasySettingManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$200(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/EasySettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingManager;->getWifiEnabler()Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    move-result-object v0

    .line 367
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->getWifiState()I

    move-result v2

    .line 368
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->dismissKeyguard()V

    .line 370
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Landroid/app/StatusBarManager;

    move-result-object v3

    if-nez v3, :cond_2

    .line 371
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v3, v3, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    #setter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$102(Lcom/android/systemui/statusbar/easysetting/QuickSetting;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Landroid/app/StatusBarManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, mIntent:Landroid/content/Intent;
    const/high16 v3, 0x3080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    const-string v3, "android.settings.WIFI_P2P_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v3, v3, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_3
    return-void
.end method
