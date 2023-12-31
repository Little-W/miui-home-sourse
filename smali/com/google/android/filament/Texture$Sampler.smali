.class public final enum Lcom/google/android/filament/Texture$Sampler;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sampler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Sampler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 89
    new-instance v0, Lcom/google/android/filament/Texture$Sampler;

    const/4 v1, 0x0

    const-string v2, "SAMPLER_2D"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Texture$Sampler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    .line 91
    new-instance v0, Lcom/google/android/filament/Texture$Sampler;

    const/4 v2, 0x1

    const-string v3, "SAMPLER_2D_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Texture$Sampler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$Sampler;

    .line 93
    new-instance v0, Lcom/google/android/filament/Texture$Sampler;

    const/4 v3, 0x2

    const-string v4, "SAMPLER_CUBEMAP"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Texture$Sampler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    .line 95
    new-instance v0, Lcom/google/android/filament/Texture$Sampler;

    const/4 v4, 0x3

    const-string v5, "SAMPLER_EXTERNAL"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Texture$Sampler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/filament/Texture$Sampler;

    .line 87
    sget-object v5, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$Sampler;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->$VALUES:[Lcom/google/android/filament/Texture$Sampler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Sampler;
    .locals 1

    .line 87
    const-class v0, Lcom/google/android/filament/Texture$Sampler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Sampler;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Sampler;
    .locals 1

    .line 87
    sget-object v0, Lcom/google/android/filament/Texture$Sampler;->$VALUES:[Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Sampler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Sampler;

    return-object v0
.end method
