.class Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;
.super Ljava/lang/Object;
.source "EasySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasySettingItem"
.end annotation


# instance fields
.field mIndex:I

.field mParent:Landroid/view/ViewGroup;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "v"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 423
    if-eqz p2, :cond_0

    .line 425
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mView:Landroid/view/View;

    .line 426
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$EasySettingItem;->mIndex:I

    .line 432
    :cond_0
    return-void
.end method
