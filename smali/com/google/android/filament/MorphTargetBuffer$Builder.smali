.class public Lcom/google/android/filament/MorphTargetBuffer$Builder;
.super Ljava/lang/Object;
.source "MorphTargetBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MorphTargetBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MorphTargetBuffer$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/MorphTargetBuffer$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/filament/MorphTargetBuffer;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mNativeBuilder:J

    .line 40
    new-instance v0, Lcom/google/android/filament/MorphTargetBuffer$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MorphTargetBuffer$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mFinalizer:Lcom/google/android/filament/MorphTargetBuffer$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/MorphTargetBuffer;
    .locals 4

    .line 81
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/MorphTargetBuffer;->access$300(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Lcom/google/android/filament/MorphTargetBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/MorphTargetBuffer;-><init>(JLcom/google/android/filament/MorphTargetBuffer$1;)V

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create MorphTargetBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public count(I)Lcom/google/android/filament/MorphTargetBuffer$Builder;
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MorphTargetBuffer;->access$200(JI)V

    return-object p0
.end method

.method public vertexCount(I)Lcom/google/android/filament/MorphTargetBuffer$Builder;
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MorphTargetBuffer;->access$100(JI)V

    return-object p0
.end method
