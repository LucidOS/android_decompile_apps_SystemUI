.class public Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;
.super Landroid/app/Activity;
.source "AlwaysOnPopup.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private mAlert:Landroid/app/AlertDialog;

.field private mDialogId:Landroid/app/AlertDialog;

.field private mEnable_Flag:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mDialogId:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->intent:Landroid/content/Intent;

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->intent:Landroid/content/Intent;

    const-string v3, "OnOff_flags"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mEnable_Flag:I

    .line 36
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->requestWindowFeature(I)Z

    .line 37
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->setContentView(I)V

    .line 39
    const-string v1, ""

    .line 40
    .local v1, strMessage:Ljava/lang/String;
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 43
    iget v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mEnable_Flag:I

    if-ne v2, v4, :cond_0

    .line 45
    const v2, 0x7f09009c

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "AlwaysOnPopup"

    const-string v3, "---> [TRUE] : ASSISTED_ALWAYS_ON_POPUP_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x103030d

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$1;-><init>(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;-><init>(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$3;-><init>(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    return-void

    .line 50
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v2, 0x7f09009d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "AlwaysOnPopup"

    const-string v3, "---> [FALSE] : ASSISTED_ALWAYS_OFF_POPUP_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "AlwaysOnPopup"

    const-string v1, "---> [onDestroy] : Destroy !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mAlert:Landroid/app/AlertDialog;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 100
    const-string v0, "AlwaysOnPopup"

    const-string v1, "---> [onPause] : Pause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->finish()V

    .line 102
    return-void
.end method
