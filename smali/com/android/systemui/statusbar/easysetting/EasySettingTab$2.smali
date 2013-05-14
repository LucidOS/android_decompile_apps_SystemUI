.class Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;
.super Ljava/lang/Object;
.source "EasySettingTab.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingTab;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xa1

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, action:I
    if-nez v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->changeTextColor(Landroid/view/View;I)V

    .line 133
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 131
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingTab;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->changeTextColor(Landroid/view/View;I)V

    goto :goto_0
.end method
