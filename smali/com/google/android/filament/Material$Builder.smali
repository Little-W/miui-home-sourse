.class public Lcom/google/android/filament/Material$Builder;
.super Ljava/lang/Object;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/Buffer;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;
    .locals 2

    .line 312
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/Material$Builder;->mBuffer:Ljava/nio/Buffer;

    iget p0, p0, Lcom/google/android/filament/Material$Builder;->mSize:I

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/filament/Material;->access$000(JLjava/nio/Buffer;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/google/android/filament/Material;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Material;-><init>(J)V

    return-object v0

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create Material"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public payload(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$Builder;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/android/filament/Material$Builder;->mBuffer:Ljava/nio/Buffer;

    .line 297
    iput p2, p0, Lcom/google/android/filament/Material$Builder;->mSize:I

    return-object p0
.end method
