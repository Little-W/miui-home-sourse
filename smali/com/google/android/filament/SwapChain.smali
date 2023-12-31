.class public Lcom/google/android/filament/SwapChain;
.super Ljava/lang/Object;
.source "SwapChain.java"


# static fields
.field public static final CONFIG_DEFAULT:J = 0x0L

.field public static final CONFIG_READABLE:J = 0x2L

.field public static final CONFIG_TRANSPARENT:J = 0x1L


# instance fields
.field private mNativeObject:J

.field private final mSurface:Ljava/lang/Object;


# direct methods
.method constructor <init>(JLjava/lang/Object;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/google/android/filament/SwapChain;->mNativeObject:J

    .line 90
    iput-object p3, p0, Lcom/google/android/filament/SwapChain;->mSurface:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/google/android/filament/SwapChain;->mNativeObject:J

    return-void
.end method

.method public getNativeObject()J
    .locals 4

    .line 102
    iget-wide v0, p0, Lcom/google/android/filament/SwapChain;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed SwapChain"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNativeWindow()Ljava/lang/Object;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/filament/SwapChain;->mSurface:Ljava/lang/Object;

    return-object p0
.end method
