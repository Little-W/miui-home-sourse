.class public final enum Lcom/google/android/filament/Texture$CompressedFormat;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressedFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$CompressedFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT1_RGB:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT1_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT3_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT5_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_R11:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_R11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_RG11:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_RG11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_EAC_RGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_EAC_SRGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_RGB8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_RGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_SRGB8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_SRGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 230
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "EAC_R11"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "EAC_R11_SIGNED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "EAC_RG11"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "EAC_RG11_SIGNED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 231
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_RGB8"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_SRGB8"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 232
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_RGB8_A1"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_SRGB8_A1"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 233
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_EAC_RGBA8"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_RGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "ETC2_EAC_SRGBA8"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_SRGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 236
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "DXT1_RGB"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGB:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "DXT1_RGBA"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "DXT3_RGBA"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->DXT3_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "DXT5_RGBA"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->DXT5_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    const/16 v0, 0xe

    .line 228
    new-array v0, v0, [Lcom/google/android/filament/Texture$CompressedFormat;

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_RGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_SRGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGB:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->DXT3_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->DXT5_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->$VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$CompressedFormat;
    .locals 1

    .line 228
    const-class v0, Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$CompressedFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$CompressedFormat;
    .locals 1

    .line 228
    sget-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->$VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$CompressedFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$CompressedFormat;

    return-object v0
.end method
