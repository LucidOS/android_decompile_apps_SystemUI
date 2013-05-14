.class public Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;
.super Landroid/app/Activity;
.source "RoamingDataPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mView:Landroid/view/View;


# instance fields
.field private iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

.field private intent:Landroid/content/Intent;

.field private isDebugMode:Z

.field private mAgree1:Landroid/widget/CheckBox;

.field private mAgree2:Landroid/widget/CheckBox;

.field private mAlert:Landroid/app/AlertDialog;

.field mCancel:Landroid/content/DialogInterface$OnClickListener;

.field mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mContext:Landroid/content/Context;

.field private mDialogId:Landroid/app/AlertDialog;

.field private mEnable_Flag:I

.field mOk:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    .line 45
    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mDialogId:Landroid/app/AlertDialog;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->isDebugMode:Z

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$1;-><init>(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mOk:Landroid/content/DialogInterface$OnClickListener;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;-><init>(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mCancel:Landroid/content/DialogInterface$OnClickListener;

    .line 250
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$3;-><init>(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Lcom/android/internal/telephony/ISkyDataConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;Lcom/android/internal/telephony/ISkyDataConnection;)Lcom/android/internal/telephony/ISkyDataConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->isDebugMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->intent:Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->intent:Landroid/content/Intent;

    const-string v2, "OnOff_flags"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mEnable_Flag:I

    .line 65
    iput-object p0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->requestWindowFeature(I)Z

    .line 71
    const-string v0, ""

    .line 73
    .local v0, strMessage:Ljava/lang/String;
    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mView:Landroid/view/View;

    .line 74
    sget-object v1, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mView:Landroid/view/View;

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree1:Landroid/widget/CheckBox;

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mView:Landroid/view/View;

    const v2, 0x7f0c004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree2:Landroid/widget/CheckBox;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree1:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAgree2:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 84
    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mEnable_Flag:I

    if-ne v1, v3, :cond_0

    .line 96
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mContext:Landroid/content/Context;

    const v3, 0x103030d

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900b6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900bb

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900bc

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mCancel:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "RoamingDataPopup"

    const-string v1, "---> [onDestroy] : Destroy !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;

    .line 194
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    return-void
.end method
