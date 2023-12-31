.class public Lcom/google/android/filament/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Stream$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/Stream$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/google/android/filament/Stream;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    .line 74
    new-instance v0, Lcom/google/android/filament/Stream$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Stream$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Stream$Builder;->mFinalizer:Lcom/google/android/filament/Stream$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Stream;
    .locals 4

    .line 149
    iget-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Stream;->access$500(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 151
    new-instance p0, Lcom/google/android/filament/Stream;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/Stream;-><init>(JLcom/google/android/filament/Engine;)V

    return-object p0

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create Stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public height(I)Lcom/google/android/filament/Stream$Builder;
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->access$400(JI)V

    return-object p0
.end method

.method public stream(J)Lcom/google/android/filament/Stream$Builder;
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Stream;->access$200(JJ)V

    return-object p0
.end method

.method public stream(Ljava/lang/Object;)Lcom/google/android/filament/Stream$Builder;
    .locals 2

    .line 89
    invoke-static {}, Lcom/google/android/filament/Platform;->get()Lcom/google/android/filament/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Platform;->validateStreamSource(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->access$100(JLjava/lang/Object;)V

    return-object p0

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public width(I)Lcom/google/android/filament/Stream$Builder;
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/google/android/filament/Stream$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Stream;->access$300(JI)V

    return-object p0
.end method
