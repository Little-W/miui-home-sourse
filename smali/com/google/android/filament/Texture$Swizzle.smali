.class public final enum Lcom/google/android/filament/Texture$Swizzle;
.super Ljava/lang/Enum;


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

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v1, 0x0

    const-string v2, "SUBSTITUTE_ZERO"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ZERO:Lcom/google/android/filament/Texture$Swizzle;

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v2, 0x1

    const-string v3, "SUBSTITUTE_ONE"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ONE:Lcom/google/android/filament/Texture$Swizzle;

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v3, 0x2

    const-string v4, "CHANNEL_0"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_0:Lcom/google/android/filament/Texture$Swizzle;

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v4, 0x3

    const-string v5, "CHANNEL_1"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_1:Lcom/google/android/filament/Texture$Swizzle;

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v5, 0x4

    const-string v6, "CHANNEL_2"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_2:Lcom/google/android/filament/Texture$Swizzle;

    new-instance v0, Lcom/google/android/filament/Texture$Swizzle;

    const/4 v6, 0x5

    const-string v7, "CHANNEL_3"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/Texture$Swizzle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_3:Lcom/google/android/filament/Texture$Swizzle;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/filament/Texture$Swizzle;

    sget-object v7, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ZERO:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->SUBSTITUTE_ONE:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_0:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_1:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_2:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$Swizzle;->CHANNEL_3:Lcom/google/android/filament/Texture$Swizzle;

    aput-object v1, v0, v6

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Swizzle;
    .locals 1

    const-class v0, Lcom/google/android/filament/Texture$Swizzle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Swizzle;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Swizzle;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$Swizzle;->$VALUES:[Lcom/google/android/filament/Texture$Swizzle;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Swizzle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Swizzle;

    return-object v0
.end method
