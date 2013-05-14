.class Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;
.super Landroid/widget/LinearLayout;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusChangeListener"
.end annotation


# instance fields
.field mAlert:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    .line 424
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 426
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 442
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 443
    return-void
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$FocusChangeListener;->mAlert:Landroid/app/AlertDialog;

    .line 431
    return-void
.end method
