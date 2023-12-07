.class public final enum Lcom/google/android/filament/VertexBuffer$VertexAttribute;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v1, 0x0

    const-string v2, "POSITION"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v2, 0x1

    const-string v3, "TANGENTS"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v3, 0x2

    const-string v4, "COLOR"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v4, 0x3

    const-string v5, "UV0"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v5, 0x4

    const-string v6, "UV1"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v6, 0x5

    const-string v7, "BONE_INDICES"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v7, 0x6

    const-string v8, "BONE_WEIGHTS"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v8, 0x7

    const-string v9, "UNUSED"

    invoke-direct {v0, v9, v8}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v9, 0x8

    const-string v10, "CUSTOM0"

    invoke-direct {v0, v10, v9}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v10, 0x9

    const-string v11, "CUSTOM1"

    invoke-direct {v0, v11, v10}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v11, 0xa

    const-string v12, "CUSTOM2"

    invoke-direct {v0, v12, v11}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v12, 0xb

    const-string v13, "CUSTOM3"

    invoke-direct {v0, v13, v12}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v13, 0xc

    const-string v14, "CUSTOM4"

    invoke-direct {v0, v14, v13}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v14, 0xd

    const-string v15, "CUSTOM5"

    invoke-direct {v0, v15, v14}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v15, 0xe

    const-string v14, "CUSTOM6"

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v14, "CUSTOM7"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v14, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v14, v0, v1

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    const-class v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    sget-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v0}, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object v0
.end method
