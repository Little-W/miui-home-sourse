.class public final enum Lcom/google/android/filament/VertexBuffer$AttributeType;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/VertexBuffer$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum BYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum BYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum BYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum BYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum FLOAT:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum FLOAT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum FLOAT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum HALF:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum HALF2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum HALF3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum HALF4:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum INT:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum SHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum SHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum SHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum SHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum UBYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum UBYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum UBYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum UBYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum UINT:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum USHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum USHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum USHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

.field public static final enum USHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 80
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v1, 0x0

    const-string v2, "BYTE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 81
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v2, 0x1

    const-string v3, "BYTE2"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 82
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v3, 0x2

    const-string v4, "BYTE3"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 83
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v4, 0x3

    const-string v5, "BYTE4"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 84
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v5, 0x4

    const-string v6, "UBYTE"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 85
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v6, 0x5

    const-string v7, "UBYTE2"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 86
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v7, 0x6

    const-string v8, "UBYTE3"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 87
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v8, 0x7

    const-string v9, "UBYTE4"

    invoke-direct {v0, v9, v8}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 88
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v9, 0x8

    const-string v10, "SHORT"

    invoke-direct {v0, v10, v9}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 89
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v10, 0x9

    const-string v11, "SHORT2"

    invoke-direct {v0, v11, v10}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 90
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v11, 0xa

    const-string v12, "SHORT3"

    invoke-direct {v0, v12, v11}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 91
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v12, 0xb

    const-string v13, "SHORT4"

    invoke-direct {v0, v13, v12}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 92
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v13, 0xc

    const-string v14, "USHORT"

    invoke-direct {v0, v14, v13}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 93
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v14, 0xd

    const-string v15, "USHORT2"

    invoke-direct {v0, v15, v14}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 94
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v15, 0xe

    const-string v14, "USHORT3"

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 95
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "USHORT4"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 96
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "INT"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->INT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 97
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "UINT"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->UINT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 98
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "FLOAT"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 99
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "FLOAT2"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 100
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "FLOAT3"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 101
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "FLOAT4"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 102
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "HALF"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 103
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "HALF2"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 104
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "HALF3"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 105
    new-instance v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    const-string v14, "HALF4"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/google/android/filament/VertexBuffer$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 79
    sget-object v14, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->BYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->USHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->INT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->UINT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF3:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->$VALUES:[Lcom/google/android/filament/VertexBuffer$AttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/VertexBuffer$AttributeType;
    .locals 1

    .line 79
    const-class v0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/VertexBuffer$AttributeType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/VertexBuffer$AttributeType;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/android/filament/VertexBuffer$AttributeType;->$VALUES:[Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual {v0}, [Lcom/google/android/filament/VertexBuffer$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/VertexBuffer$AttributeType;

    return-object v0
.end method
