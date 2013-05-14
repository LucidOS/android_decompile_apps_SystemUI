.class Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;
.super Ljava/lang/Object;
.source "EasySettingEditOnOff.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 254
    :cond_0
    return-void
.end method
