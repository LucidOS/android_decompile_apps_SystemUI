.class Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;
.super Ljava/lang/Object;
.source "EasySettingOnOff.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mModeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 358
    :cond_0
    return-void
.end method
