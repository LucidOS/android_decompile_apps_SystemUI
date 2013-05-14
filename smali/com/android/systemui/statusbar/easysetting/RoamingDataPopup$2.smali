.class Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;
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
    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    #getter for: Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->access$000(Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup$2;->this$0:Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/RoamingDataPopup;->finish()V

    .line 247
    :cond_0
    return-void
.end method
