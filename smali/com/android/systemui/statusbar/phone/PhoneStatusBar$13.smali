.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1060
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNewNavigation:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v3, 0x800

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOEMKeyBlock(I)Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentKeyFlag:Z

    .line 1069
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v0, closeDialogs:Landroid/content/Intent;
    const-string v2, "reason"

    const-string v3, "aotmenu"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "alwaysontop"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 1074
    .local v1, service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->showAlwaysOnTopPicker()V

    .line 1075
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method
