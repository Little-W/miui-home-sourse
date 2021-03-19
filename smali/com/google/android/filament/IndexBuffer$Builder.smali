.class public Lcom/google/android/filament/IndexBuffer$Builder;
.super Ljava/lang/Object;
.source "IndexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/IndexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndexBuffer$Builder$BuilderFinalizer;,
        Lcom/google/android/filament/IndexBuffer$Builder$IndexType;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/IndexBuffer$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/android/filament/IndexBuffer;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mNativeBuilder:J

    .line 63
    new-instance v0, Lcom/google/android/filament/IndexBuffer$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/IndexBuffer$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mFinalizer:Lcom/google/android/filament/IndexBuffer$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public bufferType(Lcom/google/android/filament/IndexBuffer$Builder$IndexType;)Lcom/google/android/filament/IndexBuffer$Builder;
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->access$200(JI)V

    return-object p0
.end method

.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;
    .locals 4

    .line 107
    iget-wide v0, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/IndexBuffer;->access$300(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 110
    new-instance p1, Lcom/google/android/filament/IndexBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/filament/IndexBuffer;-><init>(JLcom/google/android/filament/IndexBuffer$1;)V

    return-object p1

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create IndexBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexCount(I)Lcom/google/android/filament/IndexBuffer$Builder;
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/android/filament/IndexBuffer$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->access$100(JI)V

    return-object p0
.end method
