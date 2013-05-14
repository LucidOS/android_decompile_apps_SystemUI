.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonOrientationListener"
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClassName:Ljava/lang/String;

.field private mDisplay:Landroid/view/Display;

.field private mEnabled:Z

.field private mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mPackageName:Ljava/lang/String;

.field private mRunningTaskInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mEnabled:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientation:I

    .line 96
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientationCompensation:I

    .line 109
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mDisplay:Landroid/view/Display;

    .line 110
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter "context"
    .parameter "host"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;-><init>(Landroid/content/Context;)V

    .line 116
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 117
    return-void
.end method

.method private convertFromRotationToIndex(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    .line 146
    sparse-switch p1, :sswitch_data_0

    .line 152
    :goto_0
    :sswitch_0
    return v0

    .line 148
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 150
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 136
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return v1

    .line 138
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 139
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 140
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 122
    const/4 v0, 0x1

    .line 128
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    add-int/lit8 v2, p1, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p2, v2, 0x168

    .line 131
    .end local p2
    :cond_0
    return p2

    .line 124
    .restart local p2
    :cond_1
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 125
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 126
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mEnabled:Z

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 270
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    .line 274
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mDisplay:Landroid/view/Display;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 278
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 280
    :cond_2
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mEnabled:Z

    .line 258
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientationCompensation:I

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorientForOrientationListenerDisabled()V

    .line 260
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mEnabled:Z

    .line 251
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 12
    .parameter "orientation"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 158
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mEnabled:Z

    if-nez v7, :cond_0

    .line 159
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v9, "onOrientationChanged :: Not available, Listener is not enabled"

    invoke-static {v7, v9, v8}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 244
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v7, :cond_1

    .line 164
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v9, "onOrientationChanged :: Not available, NavigationBarView is null"

    invoke-static {v7, v9, v8}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 169
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    .line 171
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 172
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mPackageName:Ljava/lang/String;

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mClassName:Ljava/lang/String;

    .line 179
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 180
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mRunningTaskInfo:Ljava/util/List;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, available:Z
    const/4 v5, 0x0

    .line 189
    .local v5, pkg:Z
    const/4 v1, 0x0

    .line 190
    .local v1, cls:Z
    const/4 v6, 0x0

    .line 191
    .local v6, state:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_PACKAGES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 193
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_PACKAGES:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 194
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_CLASSES:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 195
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    move v0, v8

    .line 196
    :goto_2
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_STATE:[I

    aget v6, v7, v3

    .line 197
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 198
    if-ne v0, v8, :cond_6

    if-eqz v6, :cond_6

    .line 203
    :cond_2
    if-nez v5, :cond_7

    .line 204
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v9, "onOrientationChanged :: Not available, package not matched"

    invoke-static {v7, v9, v8}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->disable()V

    goto/16 :goto_0

    .line 176
    .end local v0           #available:Z
    .end local v1           #cls:Z
    .end local v3           #i:I
    .end local v5           #pkg:Z
    .end local v6           #state:I
    :cond_3
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, RunningTaskInfo is null or size is 0"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 183
    :cond_4
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, ActivityManager is null"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .restart local v0       #available:Z
    .restart local v1       #cls:Z
    .restart local v3       #i:I
    .restart local v5       #pkg:Z
    .restart local v6       #state:I
    :cond_5
    move v0, v9

    .line 195
    goto :goto_2

    .line 191
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    :cond_7
    if-eqz v0, :cond_8

    if-nez v6, :cond_9

    .line 210
    :cond_8
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, there are no available activities"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 214
    :cond_9
    const/4 v7, -0x1

    if-ne p1, v7, :cond_a

    .line 215
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, orientation is unknown"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 219
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-nez v7, :cond_b

    .line 220
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, display rotation is 0"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 224
    :cond_b
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientation:I

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->roundOrientation(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientation:I

    .line 228
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->getDisplayRotation()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v7, -0x5a

    .line 230
    .local v4, orientationCompensation:I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientationCompensation:I

    if-ne v7, v4, :cond_c

    .line 231
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    const-string v8, "onOrientationChanged :: Not available, orientation is not changed"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 235
    :cond_c
    const-string v7, "NavigationBarViewUtils.OrientationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onOrientationChanged :: received orientation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mOrientation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientation:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", old orientationCompensation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientationCompensation:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", orientationCompensation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 240
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->convertFromRotationToIndex(I)I

    move-result v2

    .line 242
    .local v2, convertRot:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mHost:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorientByOrientationChanged(I)V

    .line 243
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->mOrientationCompensation:I

    goto/16 :goto_0
.end method
