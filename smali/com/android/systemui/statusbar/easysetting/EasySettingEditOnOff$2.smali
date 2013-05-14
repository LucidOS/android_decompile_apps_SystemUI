.class Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;
.super Ljava/lang/Object;
.source "EasySettingEditOnOff.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 265
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$100(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$100(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
