.class public final enum Lcom/google/android/filament/TextureSampler$WrapMode;
.super Ljava/lang/Enum;
.source "TextureSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v1, "CLAMP_TO_EDGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    .line 41
    new-instance v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v1, "REPEAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/TextureSampler$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    .line 45
    new-instance v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v1, "MIRRORED_REPEAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/TextureSampler$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/google/android/filament/TextureSampler$WrapMode;

    sget-object v1, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/TextureSampler$WrapMode;->REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/TextureSampler$WrapMode;->MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 1

    .line 33
    const-class v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$WrapMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$WrapMode;

    return-object v0
.end method
