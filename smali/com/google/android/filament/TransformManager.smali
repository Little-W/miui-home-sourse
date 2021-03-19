.class public Lcom/google/android/filament/TransformManager;
.super Ljava/lang/Object;
.source "TransformManager.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    return-void
.end method

.method private static native nCommitLocalTransformTransaction(J)V
.end method

.method private static native nCreate(JI)I
.end method

.method private static native nCreateArray(JII[F)I
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetTransform(JI[F)V
.end method

.method private static native nGetWorldTransform(JI[F)V
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nOpenLocalTransformTransaction(J)V
.end method

.method private static native nSetParent(JII)V
.end method

.method private static native nSetTransform(JI[F)V
.end method


# virtual methods
.method public commitLocalTransformTransaction()V
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/TransformManager;->nCommitLocalTransformTransaction(J)V

    return-void
.end method

.method public create(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/EntityInstance;
    .end annotation

    .line 97
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nCreate(JI)I

    move-result p1

    return p1
.end method

.method public create(II[F)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/EntityInstance;
    .end annotation

    .line 114
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/TransformManager;->nCreateArray(JII[F)I

    move-result p1

    return p1
.end method

.method public destroy(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 127
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nDestroy(JI)V

    return-void
.end method

.method public getInstance(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/EntityInstance;
    .end annotation

    .line 83
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nGetInstance(JI)I

    move-result p1

    return p1
.end method

.method public getNativeObject()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    return-wide v0
.end method

.method public getTransform(I[F)[F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param

    .line 175
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertMat4f([F)[F

    move-result-object p2

    .line 176
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/TransformManager;->nGetTransform(JI[F)V

    return-object p2
.end method

.method public getWorldTransform(I[F)[F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param

    .line 195
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertMat4f([F)[F

    move-result-object p2

    .line 196
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/TransformManager;->nGetWorldTransform(JI[F)V

    return-object p2
.end method

.method public hasComponent(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 69
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nHasComponent(JI)Z

    move-result p1

    return p1
.end method

.method public openLocalTransformTransaction()V
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/TransformManager;->nOpenLocalTransformTransaction(J)V

    return-void
.end method

.method public setParent(II)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param

    .line 140
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/TransformManager;->nSetParent(JII)V

    return-void
.end method

.method public setTransform(I[F)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/EntityInstance;
        .end annotation
    .end param

    .line 156
    invoke-static {p2}, Lcom/google/android/filament/Asserts;->assertMat4fIn([F)V

    .line 157
    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/TransformManager;->nSetTransform(JI[F)V

    return-void
.end method
