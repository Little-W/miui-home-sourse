.class public final enum Lcom/google/android/filament/textured/TextureType;
.super Ljava/lang/Enum;
.source "TextureLoader.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/textured/TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/textured/TextureType;

.field public static final enum COLOR:Lcom/google/android/filament/textured/TextureType;

.field public static final enum DATA:Lcom/google/android/filament/textured/TextureType;

.field public static final enum NORMAL:Lcom/google/android/filament/textured/TextureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/filament/textured/TextureType;

    new-instance v1, Lcom/google/android/filament/textured/TextureType;

    const/4 v2, 0x0

    const-string v3, "COLOR"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/textured/TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/textured/TextureType;->COLOR:Lcom/google/android/filament/textured/TextureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/filament/textured/TextureType;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/textured/TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/textured/TextureType;->NORMAL:Lcom/google/android/filament/textured/TextureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/filament/textured/TextureType;

    const/4 v2, 0x2

    const-string v3, "DATA"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/textured/TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/textured/TextureType;->DATA:Lcom/google/android/filament/textured/TextureType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/textured/TextureType;->$VALUES:[Lcom/google/android/filament/textured/TextureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/textured/TextureType;
    .locals 1

    const-class v0, Lcom/google/android/filament/textured/TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/textured/TextureType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/textured/TextureType;
    .locals 1

    sget-object v0, Lcom/google/android/filament/textured/TextureType;->$VALUES:[Lcom/google/android/filament/textured/TextureType;

    invoke-virtual {v0}, [Lcom/google/android/filament/textured/TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/textured/TextureType;

    return-object v0
.end method
