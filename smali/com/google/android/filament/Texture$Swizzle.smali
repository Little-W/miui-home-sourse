.class public final enum Lcom/google/android/filament/Texture$Swizzle;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Swizzle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Swizzle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum CHANNEL_0:Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum CHANNEL_1:Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum CHANNEL_2:Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum CHANNEL_3:Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum SUBSTITUTE_ONE:Lcom/google/android/filament/Texture$Swizzle;

.field public static final enum SUBSTITUTE_ZERO:Lcom/google/android/filament/Texture$Swizzle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 308
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "SUBSTITUTE_ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ZERO:Lcom/google/android/filament/Texture$Swizzle;

    .line 309
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "SUBSTITUTE_ONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ONE:Lcom/google/android/filament/Texture$Swizzle;

    .line 310
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "CHANNEL_0"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_0:Lcom/google/android/filament/Texture$Swizzle;

    .line 311
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "CHANNEL_1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_1:Lcom/google/android/filament/Texture$Swizzle;

    .line 312
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "CHANNEL_2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_2:Lcom/google/android/filament/Texture$Swizzle;

    .line 313
    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const-string v1, "CHANNEL_3"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_3:Lcom/google/android/filament/Texture$Swizzle;

    const/4 v0, 0x6

    .line 307
    new-array v0, v0, [Lcom/google/android/filament/Texture$Swizzle;

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ZERO:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ONE:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_0:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_1:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_2:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_3:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->$VALUES:[Lcom/google/android/filament/Texture$Swizzle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Swizzle;
    .locals 1

    .line 307
    const-class v0, Lcom/google/android/filament/Texture$Swizzle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Swizzle;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Swizzle;
    .locals 1

    .line 307
    sget-object v0, Lcom/google/android/filament/Texture$Swizzle;->$VALUES:[Lcom/google/android/filament/Texture$Swizzle;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Swizzle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Swizzle;

    return-object v0
.end method
