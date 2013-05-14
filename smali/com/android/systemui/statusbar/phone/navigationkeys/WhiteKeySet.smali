.class public Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;
.super Ljava/lang/Object;
.source "WhiteKeySet.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;


# instance fields
.field private mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    .line 20
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;

    return-object v0
.end method


# virtual methods
.method public getBackDrawableId()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getBackDrawableId()I

    move-result v0

    return v0
.end method

.method public getBackInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getBackInvisibleDrawableId()I

    move-result v0

    return v0
.end method

.method public getHomeDrawableId()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getHomeDrawableId()I

    move-result v0

    return v0
.end method

.method public getHomeInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getHomeInvisibleDrawableId()I

    move-result v0

    return v0
.end method

.method public getMenuDrawableId()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getMenuDrawableId()I

    move-result v0

    return v0
.end method

.method public getMenuInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getMenuInvisibleDrawableId()I

    move-result v0

    return v0
.end method

.method public getRecentsDrawableId()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getRecentsDrawableId()I

    move-result v0

    return v0
.end method

.method public getRecentsInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;->getRecentsInvisibleDrawableId()I

    move-result v0

    return v0
.end method

.method public setRotationState(I)V
    .locals 1
    .parameter "rotate"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 67
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White0;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 71
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 75
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 79
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/White270;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White270;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/navigationkeys/WhitePort;->getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/WhitePort;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/WhiteKeySet;->mRotationState:Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;

    goto :goto_0
.end method
