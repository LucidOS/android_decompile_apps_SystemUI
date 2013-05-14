.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1030
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1032
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v2

    .line 1034
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v5, 0x400

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isOEMKeyBlock(I)Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentKeyFlag:Z

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v0, closeDialogs:Landroid/content/Intent;
    const-string v2, "reason"

    const-string v4, "aotmenu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "alwaysontop"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 1045
    .local v1, service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->showAlwaysOnTopPicker()V

    move v2, v3

    .line 1047
    goto :goto_0
.end method
