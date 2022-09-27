.class public final enum Lcom/google/android/filament/Material$CullingMode;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CullingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$CullingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$CullingMode;

.field public static final enum BACK:Lcom/google/android/filament/Material$CullingMode;

.field public static final enum FRONT:Lcom/google/android/filament/Material$CullingMode;

.field public static final enum FRONT_AND_BACK:Lcom/google/android/filament/Material$CullingMode;

.field public static final enum NONE:Lcom/google/android/filament/Material$CullingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->NONE:Lcom/google/android/filament/Material$CullingMode;

    .line 216
    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const-string v1, "FRONT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->FRONT:Lcom/google/android/filament/Material$CullingMode;

    .line 219
    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const-string v1, "BACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->BACK:Lcom/google/android/filament/Material$CullingMode;

    .line 222
    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const-string v1, "FRONT_AND_BACK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->FRONT_AND_BACK:Lcom/google/android/filament/Material$CullingMode;

    const/4 v0, 0x4

    .line 211
    new-array v0, v0, [Lcom/google/android/filament/Material$CullingMode;

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->NONE:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->FRONT:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->BACK:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->FRONT_AND_BACK:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->$VALUES:[Lcom/google/android/filament/Material$CullingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$CullingMode;
    .locals 1

    .line 211
    const-class v0, Lcom/google/android/filament/Material$CullingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$CullingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$CullingMode;
    .locals 1

    .line 211
    sget-object v0, Lcom/google/android/filament/Material$CullingMode;->$VALUES:[Lcom/google/android/filament/Material$CullingMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$CullingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$CullingMode;

    return-object v0
.end method
