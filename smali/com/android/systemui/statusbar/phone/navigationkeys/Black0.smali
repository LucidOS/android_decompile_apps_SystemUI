.class public Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;
.super Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.source "Black0.java"


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f0200e2

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    .line 15
    const v0, 0x7f0200ca

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 16
    const v0, 0x7f0200bb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 17
    const v0, 0x7f0200e5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 18
    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 19
    const v0, 0x7f0200bc

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 20
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 22
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black0;

    return-object v0
.end method
