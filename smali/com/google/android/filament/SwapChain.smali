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

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed SwapChain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeWindow()Ljava/lang/Object;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/filament/SwapChain;->mSurface:Ljava/lang/Object;

    return-object v0
.end method
