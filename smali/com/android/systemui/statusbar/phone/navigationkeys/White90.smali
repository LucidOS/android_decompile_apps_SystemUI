.class public Lcom/android/systemui/statusbar/phone/navigationkeys/White90;
.super Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.source "White90.java"


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White90;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    .line 15
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 16
    const v0, 0x7f0200bf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 17
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 18
    const v0, 0x7f0200cf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 19
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 20
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 21
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 22
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White90;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White90;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White90;

    return-object v0
.end method
