.class final Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;
.super Ljava/lang/Object;
.source "EasySettingSwicher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field mAni:Landroid/view/animation/Animation;

.field mIndex:I

.field mSource:Landroid/view/View;

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

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
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
    .line 108
    .local p3, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    .line 110
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    .line 111
    iput-object p3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    .line 113
    const-string v0, "JY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwapViews source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 131
    const-string v4, "JY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SwapViews  run source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taget = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    instance-of v4, v4, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v4, :cond_2

    .line 137
    const-string v4, "JY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is Easysetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    instance-of v4, v4, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    if-eqz v4, :cond_3

    .line 141
    const-string v4, "JY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is Easysetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 145
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 146
    .local v3, vgTarget:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 147
    .local v0, sourceIndex:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 148
    .local v1, targetIndex:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    if-le v0, v1, :cond_4

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 163
    :goto_1
    const-string v4, "JY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationEnd :: src index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " target index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    .line 168
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mAni:Landroid/view/animation/Animation;

    .line 124
    return-void
.end method

.method setViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "src"
    .parameter "target"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    .line 119
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    .line 120
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher;->mSwap:Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mSource:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingSwicher$SwapViews;->setViews(Landroid/view/View;Landroid/view/View;)V

    .line 105
    :cond_0
    return-void
.end method
