.class public final enum Lcom/google/android/filament/VertexBuffer$VertexAttribute;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


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

    .line 61
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 62
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "TANGENTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 63
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "COLOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 64
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "UV0"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 65
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "UV1"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 66
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "BONE_INDICES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 67
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "BONE_WEIGHTS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 68
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "UNUSED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 69
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM0"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 70
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM1"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 71
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM2"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 72
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM3"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 73
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM4"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 74
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM5"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 75
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM6"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 76
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM7"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v0, 0x10

    .line 60
    new-array v0, v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    aput-object v1, v0, v14

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    .line 60
    const-class v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v0}, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object v0
.end method
