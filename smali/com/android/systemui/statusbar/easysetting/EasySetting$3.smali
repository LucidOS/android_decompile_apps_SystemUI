.class Lcom/android/systemui/statusbar/easysetting/EasySetting$3;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySetting;->isDebugMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$200(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "EasySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch Event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
