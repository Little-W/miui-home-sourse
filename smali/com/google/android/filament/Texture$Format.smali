.class public final enum Lcom/google/android/filament/Texture$Format;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Format;

.field public static final enum ALPHA:Lcom/google/android/filament/Texture$Format;

.field public static final enum DEPTH_COMPONENT:Lcom/google/android/filament/Texture$Format;

.field public static final enum DEPTH_STENCIL:Lcom/google/android/filament/Texture$Format;

.field public static final enum R:Lcom/google/android/filament/Texture$Format;

.field public static final enum RG:Lcom/google/android/filament/Texture$Format;

.field public static final enum RGB:Lcom/google/android/filament/Texture$Format;

.field public static final enum RGBA:Lcom/google/android/filament/Texture$Format;

.field public static final enum RGBA_INTEGER:Lcom/google/android/filament/Texture$Format;

.field public static final enum RGB_INTEGER:Lcom/google/android/filament/Texture$Format;

.field public static final enum RG_INTEGER:Lcom/google/android/filament/Texture$Format;

.field public static final enum R_INTEGER:Lcom/google/android/filament/Texture$Format;

.field public static final enum STENCIL_INDEX:Lcom/google/android/filament/Texture$Format;

.field public static final enum UNUSED:Lcom/google/android/filament/Texture$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 261
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->R:Lcom/google/android/filament/Texture$Format;

    .line 262
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "R_INTEGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->R_INTEGER:Lcom/google/android/filament/Texture$Format;

    .line 263
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RG:Lcom/google/android/filament/Texture$Format;

    .line 264
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RG_INTEGER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RG_INTEGER:Lcom/google/android/filament/Texture$Format;

    .line 265
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RGB"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    .line 266
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RGB_INTEGER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGB_INTEGER:Lcom/google/android/filament/Texture$Format;

    .line 267
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RGBA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    .line 268
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "RGBA_INTEGER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGBA_INTEGER:Lcom/google/android/filament/Texture$Format;

    .line 269
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "UNUSED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->UNUSED:Lcom/google/android/filament/Texture$Format;

    .line 270
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "DEPTH_COMPONENT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$Format;

    .line 271
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "DEPTH_STENCIL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->DEPTH_STENCIL:Lcom/google/android/filament/Texture$Format;

    .line 272
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "STENCIL_INDEX"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->STENCIL_INDEX:Lcom/google/android/filament/Texture$Format;

    .line 273
    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const-string v1, "ALPHA"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->ALPHA:Lcom/google/android/filament/Texture$Format;

    const/16 v0, 0xd

    .line 260
    new-array v0, v0, [Lcom/google/android/filament/Texture$Format;

    sget-object v1, Lcom/google/android/filament/Texture$Format;->R:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Format;->R_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RG:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RG_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGB_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGBA_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/Texture$Format;->UNUSED:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/Texture$Format;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/Texture$Format;->DEPTH_STENCIL:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/Texture$Format;->STENCIL_INDEX:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/filament/Texture$Format;->ALPHA:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v14

    sput-object v0, Lcom/google/android/filament/Texture$Format;->$VALUES:[Lcom/google/android/filament/Texture$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Format;
    .locals 1

    .line 260
    const-class v0, Lcom/google/android/filament/Texture$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Format;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Format;
    .locals 1

    .line 260
    sget-object v0, Lcom/google/android/filament/Texture$Format;->$VALUES:[Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Format;

    return-object v0
.end method
