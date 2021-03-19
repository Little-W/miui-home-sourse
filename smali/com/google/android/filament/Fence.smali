.class public Lcom/google/android/filament/Fence;
.super Ljava/lang/Object;
.source "Fence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Fence$FenceStatus;,
        Lcom/google/android/filament/Fence$Mode;
    }
.end annotation


# static fields
.field public static final WAIT_FOR_EVER:J = -0x1L


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/google/android/filament/Fence;->mNativeObject:J

    return-void
.end method

.method private static native nWait(JIJ)I
.end method

.method private static native nWaitAndDestroy(JI)I
.end method

.method public static waitAndDestroy(Lcom/google/android/filament/Fence;Lcom/google/android/filament/Fence$Mode;)Lcom/google/android/filament/Fence$FenceStatus;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/google/android/filament/Fence;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Fence$Mode;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Fence;->nWaitAndDestroy(JI)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 67
    sget-object p0, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p0

    .line 64
    :pswitch_0
    sget-object p0, Lcom/google/android/filament/Fence$FenceStatus;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p0

    .line 62
    :pswitch_1
    sget-object p0, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/google/android/filament/Fence;->mNativeObject:J

    return-void
.end method

.method public getNativeObject()J
    .locals 4

    .line 72
    iget-wide v0, p0, Lcom/google/android/filament/Fence;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Fence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wait(Lcom/google/android/filament/Fence$Mode;J)Lcom/google/android/filament/Fence$FenceStatus;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/google/android/filament/Fence;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Fence$Mode;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Fence;->nWait(JIJ)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 54
    sget-object p1, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p1

    .line 51
    :pswitch_0
    sget-object p1, Lcom/google/android/filament/Fence$FenceStatus;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p1

    .line 49
    :pswitch_1
    sget-object p1, Lcom/google/android/filament/Fence$FenceStatus;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p1

    .line 47
    :pswitch_2
    sget-object p1, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
