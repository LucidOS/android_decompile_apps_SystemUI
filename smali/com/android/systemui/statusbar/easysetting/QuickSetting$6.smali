.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;
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
    .line 384
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->dismissKeyguard()V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Landroid/app/StatusBarManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    #setter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$102(Lcom/android/systemui/statusbar/easysetting/QuickSetting;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x3480

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    const-string v1, "com.pantech.app.skysettings"

    const-string v2, "com.pantech.app.skysettings.sounds.SoundSettingsTab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v1, "start_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$6;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v1, v1, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 398
    return-void
.end method
