.class public final enum Lcom/google/android/filament/Material$CullingMode;
.super Ljava/lang/Enum;


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

    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->NONE:Lcom/google/android/filament/Material$CullingMode;

    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const/4 v2, 0x1

    const-string v3, "FRONT"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->FRONT:Lcom/google/android/filament/Material$CullingMode;

    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const/4 v3, 0x2

    const-string v4, "BACK"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->BACK:Lcom/google/android/filament/Material$CullingMode;

    new-instance v0, Lcom/google/android/filament/Material$CullingMode;

    const/4 v4, 0x3

    const-string v5, "FRONT_AND_BACK"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Material$CullingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$CullingMode;->FRONT_AND_BACK:Lcom/google/android/filament/Material$CullingMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/filament/Material$CullingMode;

    sget-object v5, Lcom/google/android/filament/Material$CullingMode;->NONE:Lcom/google/android/filament/Material$CullingMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->FRONT:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->BACK:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$CullingMode;->FRONT_AND_BACK:Lcom/google/android/filament/Material$CullingMode;

    aput-object v1, v0, v4

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$CullingMode;
    .locals 1

    const-class v0, Lcom/google/android/filament/Material$CullingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$CullingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$CullingMode;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Material$CullingMode;->$VALUES:[Lcom/google/android/filament/Material$CullingMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$CullingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$CullingMode;

    return-object v0
.end method
