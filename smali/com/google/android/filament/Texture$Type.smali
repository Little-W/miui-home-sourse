.class public final enum Lcom/google/android/filament/Texture$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Type;

.field public static final enum BYTE:Lcom/google/android/filament/Texture$Type;

.field public static final enum COMPRESSED:Lcom/google/android/filament/Texture$Type;

.field public static final enum FLOAT:Lcom/google/android/filament/Texture$Type;

.field public static final enum HALF:Lcom/google/android/filament/Texture$Type;

.field public static final enum INT:Lcom/google/android/filament/Texture$Type;

.field public static final enum SHORT:Lcom/google/android/filament/Texture$Type;

.field public static final enum UBYTE:Lcom/google/android/filament/Texture$Type;

.field public static final enum UINT:Lcom/google/android/filament/Texture$Type;

.field public static final enum UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

.field public static final enum USHORT:Lcom/google/android/filament/Texture$Type;

.field public static final enum USHORT_565:Lcom/google/android/filament/Texture$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v1, 0x0

    const-string v2, "UBYTE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->UBYTE:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v2, 0x1

    const-string v3, "BYTE"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->BYTE:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v3, 0x2

    const-string v4, "USHORT"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->USHORT:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v4, 0x3

    const-string v5, "SHORT"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->SHORT:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v5, 0x4

    const-string v6, "UINT"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->UINT:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v6, 0x5

    const-string v7, "INT"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->INT:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v7, 0x6

    const-string v8, "HALF"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->HALF:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/4 v8, 0x7

    const-string v9, "FLOAT"

    invoke-direct {v0, v9, v8}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->FLOAT:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/16 v9, 0x8

    const-string v10, "COMPRESSED"

    invoke-direct {v0, v10, v9}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/16 v10, 0x9

    const-string v11, "UINT_10F_11F_11F_REV"

    invoke-direct {v0, v11, v10}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const/16 v11, 0xa

    const-string v12, "USHORT_565"

    invoke-direct {v0, v12, v11}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->USHORT_565:Lcom/google/android/filament/Texture$Type;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/filament/Texture$Type;

    sget-object v12, Lcom/google/android/filament/Texture$Type;->UBYTE:Lcom/google/android/filament/Texture$Type;

    aput-object v12, v0, v1

    sget-object v1, Lcom/google/android/filament/Texture$Type;->BYTE:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Type;->USHORT:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Type;->SHORT:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$Type;->UINT:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$Type;->INT:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Texture$Type;->HALF:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/Texture$Type;->FLOAT:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/Texture$Type;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/Texture$Type;->USHORT_565:Lcom/google/android/filament/Texture$Type;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/android/filament/Texture$Type;->$VALUES:[Lcom/google/android/filament/Texture$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Type;
    .locals 1

    const-class v0, Lcom/google/android/filament/Texture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Type;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$Type;->$VALUES:[Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Type;

    return-object v0
.end method
