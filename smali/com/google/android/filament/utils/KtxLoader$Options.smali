.class public final Lcom/google/android/filament/utils/KtxLoader$Options;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/KtxLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private srgb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSrgb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/utils/KtxLoader$Options;->srgb:Z

    return p0
.end method

.method public final setSrgb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/utils/KtxLoader$Options;->srgb:Z

    return-void
.end method
