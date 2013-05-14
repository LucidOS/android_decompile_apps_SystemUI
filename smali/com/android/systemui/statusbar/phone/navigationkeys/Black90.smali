.class public Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.super Ljava/lang/Object;
.source "Black90.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;


# instance fields
.field protected mBack:I

.field protected mBackInvisible:I

.field protected mHome:I

.field protected mHomeInvisible:I

.field protected mMenu:I

.field protected mMenuInvisible:I

.field protected mRecents:I

.field protected mRecentsInvisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f0200e2

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 25
    const v0, 0x7f0200bf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 26
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 27
    const v0, 0x7f0200cf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 28
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 29
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 31
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;

    return-object v0
.end method


# virtual methods
.method public getBackDrawableId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    return v0
.end method

.method public getBackInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    return v0
.end method

.method public getHomeDrawableId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    return v0
.end method

.method public getHomeInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    return v0
.end method

.method public getMenuDrawableId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    return v0
.end method

.method public getMenuInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    return v0
.end method

.method public getRecentsDrawableId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    return v0
.end method

.method public getRecentsInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    return v0
.end method

.method public setRotationState(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 85
    return-void
.end method
