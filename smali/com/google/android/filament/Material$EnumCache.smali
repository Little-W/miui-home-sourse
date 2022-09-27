.class final Lcom/google/android/filament/Material$EnumCache;
.super Ljava/lang/Object;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumCache"
.end annotation


# static fields
.field static final sBlendingModeValues:[Lcom/google/android/filament/Material$BlendingMode;

.field static final sCullingModeValues:[Lcom/google/android/filament/Material$CullingMode;

.field static final sInterpolationValues:[Lcom/google/android/filament/Material$Interpolation;

.field static final sRefractionModeValues:[Lcom/google/android/filament/Material$RefractionMode;

.field static final sRefractionTypeValues:[Lcom/google/android/filament/Material$RefractionType;

.field static final sShadingValues:[Lcom/google/android/filament/Material$Shading;

.field static final sVertexAttributeValues:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field static final sVertexDomainValues:[Lcom/google/android/filament/Material$VertexDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/google/android/filament/Material$Shading;->values()[Lcom/google/android/filament/Material$Shading;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sShadingValues:[Lcom/google/android/filament/Material$Shading;

    .line 44
    invoke-static {}, Lcom/google/android/filament/Material$Interpolation;->values()[Lcom/google/android/filament/Material$Interpolation;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sInterpolationValues:[Lcom/google/android/filament/Material$Interpolation;

    .line 45
    invoke-static {}, Lcom/google/android/filament/Material$BlendingMode;->values()[Lcom/google/android/filament/Material$BlendingMode;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sBlendingModeValues:[Lcom/google/android/filament/Material$BlendingMode;

    .line 46
    invoke-static {}, Lcom/google/android/filament/Material$RefractionMode;->values()[Lcom/google/android/filament/Material$RefractionMode;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sRefractionModeValues:[Lcom/google/android/filament/Material$RefractionMode;

    .line 47
    invoke-static {}, Lcom/google/android/filament/Material$RefractionType;->values()[Lcom/google/android/filament/Material$RefractionType;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sRefractionTypeValues:[Lcom/google/android/filament/Material$RefractionType;

    .line 48
    invoke-static {}, Lcom/google/android/filament/Material$VertexDomain;->values()[Lcom/google/android/filament/Material$VertexDomain;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sVertexDomainValues:[Lcom/google/android/filament/Material$VertexDomain;

    .line 49
    invoke-static {}, Lcom/google/android/filament/Material$CullingMode;->values()[Lcom/google/android/filament/Material$CullingMode;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sCullingModeValues:[Lcom/google/android/filament/Material$CullingMode;

    .line 51
    invoke-static {}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$EnumCache;->sVertexAttributeValues:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
