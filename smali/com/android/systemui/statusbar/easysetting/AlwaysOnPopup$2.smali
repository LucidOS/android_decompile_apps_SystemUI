.class Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;
.super Ljava/lang/Object;
.source "AlwaysOnPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->access$000(Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 76
    const-string v0, "AlwaysOnPopup"

    const-string v1, "---> [onCancel] : Canceled !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/AlwaysOnPopup;->finish()V

    .line 78
    return-void
.end method
