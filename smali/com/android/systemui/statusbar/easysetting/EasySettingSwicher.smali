.class public Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;
.super Ljava/lang/Object;
.source "EasySettingSwicher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;
    }
.end annotation


# instance fields
.field mAni:Landroid/view/animation/Animation;

.field mIndex:I

.field mSource:Landroid/view/View;

.field mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

.field mTarget:Landroid/view/View;

.field mTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "src"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mIndex:I

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSource:Landroid/view/View;

    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTarget:Landroid/view/View;

    .line 36
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasySettingSwicher source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSource:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTargetList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTargetList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;Landroid/view/View;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    .line 39
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 65
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSource:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 80
    return-void
.end method

.method setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mAni:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "ani"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mAni:Landroid/view/animation/Animation;

    .line 55
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasySettingSwicher startAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->setAnimation(Landroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->startAnimation()V

    .line 61
    :cond_0
    return-void
.end method
