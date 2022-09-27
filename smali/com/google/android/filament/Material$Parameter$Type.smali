.class public final enum Lcom/google/android/filament/Material$Parameter$Type;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material$Parameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$Parameter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum BOOL:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum BOOL2:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum BOOL3:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum BOOL4:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum FLOAT:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum FLOAT2:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum FLOAT3:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum FLOAT4:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum INT:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum INT2:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum INT3:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum INT4:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum MAT3:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum MAT4:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SAMPLER_2D:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SAMPLER_2D_ARRAY:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SAMPLER_3D:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SAMPLER_CUBEMAP:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SAMPLER_EXTERNAL:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum SUBPASS_INPUT:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum UINT:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum UINT2:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum UINT3:Lcom/google/android/filament/Material$Parameter$Type;

.field public static final enum UINT4:Lcom/google/android/filament/Material$Parameter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 230
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->BOOL:Lcom/google/android/filament/Material$Parameter$Type;

    .line 231
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "BOOL2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->BOOL2:Lcom/google/android/filament/Material$Parameter$Type;

    .line 232
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "BOOL3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->BOOL3:Lcom/google/android/filament/Material$Parameter$Type;

    .line 233
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "BOOL4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->BOOL4:Lcom/google/android/filament/Material$Parameter$Type;

    .line 234
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "FLOAT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT:Lcom/google/android/filament/Material$Parameter$Type;

    .line 235
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "FLOAT2"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT2:Lcom/google/android/filament/Material$Parameter$Type;

    .line 236
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "FLOAT3"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT3:Lcom/google/android/filament/Material$Parameter$Type;

    .line 237
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "FLOAT4"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT4:Lcom/google/android/filament/Material$Parameter$Type;

    .line 238
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "INT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->INT:Lcom/google/android/filament/Material$Parameter$Type;

    .line 239
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "INT2"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->INT2:Lcom/google/android/filament/Material$Parameter$Type;

    .line 240
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "INT3"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->INT3:Lcom/google/android/filament/Material$Parameter$Type;

    .line 241
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "INT4"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->INT4:Lcom/google/android/filament/Material$Parameter$Type;

    .line 242
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "UINT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->UINT:Lcom/google/android/filament/Material$Parameter$Type;

    .line 243
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "UINT2"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->UINT2:Lcom/google/android/filament/Material$Parameter$Type;

    .line 244
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "UINT3"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->UINT3:Lcom/google/android/filament/Material$Parameter$Type;

    .line 245
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "UINT4"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->UINT4:Lcom/google/android/filament/Material$Parameter$Type;

    .line 246
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "MAT3"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->MAT3:Lcom/google/android/filament/Material$Parameter$Type;

    .line 247
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "MAT4"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->MAT4:Lcom/google/android/filament/Material$Parameter$Type;

    .line 248
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SAMPLER_2D"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_2D:Lcom/google/android/filament/Material$Parameter$Type;

    .line 249
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SAMPLER_2D_ARRAY"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Material$Parameter$Type;

    .line 250
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SAMPLER_CUBEMAP"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Material$Parameter$Type;

    .line 251
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SAMPLER_EXTERNAL"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Material$Parameter$Type;

    .line 252
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SAMPLER_3D"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_3D:Lcom/google/android/filament/Material$Parameter$Type;

    .line 253
    new-instance v0, Lcom/google/android/filament/Material$Parameter$Type;

    const-string v1, "SUBPASS_INPUT"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Material$Parameter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->SUBPASS_INPUT:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v0, 0x18

    .line 229
    new-array v0, v0, [Lcom/google/android/filament/Material$Parameter$Type;

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->BOOL:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->BOOL2:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->BOOL3:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->BOOL4:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT2:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT3:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->FLOAT4:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->INT:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->INT2:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->INT3:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->INT4:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->UINT:Lcom/google/android/filament/Material$Parameter$Type;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->UINT2:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->UINT3:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->UINT4:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->MAT3:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->MAT4:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_2D:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SAMPLER_3D:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Parameter$Type;->SUBPASS_INPUT:Lcom/google/android/filament/Material$Parameter$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Type;->$VALUES:[Lcom/google/android/filament/Material$Parameter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$Parameter$Type;
    .locals 1

    .line 229
    const-class v0, Lcom/google/android/filament/Material$Parameter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$Parameter$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$Parameter$Type;
    .locals 1

    .line 229
    sget-object v0, Lcom/google/android/filament/Material$Parameter$Type;->$VALUES:[Lcom/google/android/filament/Material$Parameter$Type;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$Parameter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$Parameter$Type;

    return-object v0
.end method
