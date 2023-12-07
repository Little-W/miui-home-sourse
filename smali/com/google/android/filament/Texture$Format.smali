.class public final enum Lcom/google/android/filament/Texture$Format;
.super Ljava/lang/Enum;


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

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v1, 0x0

    const-string v2, "R"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->R:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v2, 0x1

    const-string v3, "R_INTEGER"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->R_INTEGER:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v3, 0x2

    const-string v4, "RG"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RG:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v4, 0x3

    const-string v5, "RG_INTEGER"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RG_INTEGER:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v5, 0x4

    const-string v6, "RGB"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v6, 0x5

    const-string v7, "RGB_INTEGER"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGB_INTEGER:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v7, 0x6

    const-string v8, "RGBA"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/4 v8, 0x7

    const-string v9, "RGBA_INTEGER"

    invoke-direct {v0, v9, v8}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->RGBA_INTEGER:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/16 v9, 0x8

    const-string v10, "UNUSED"

    invoke-direct {v0, v10, v9}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->UNUSED:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/16 v10, 0x9

    const-string v11, "DEPTH_COMPONENT"

    invoke-direct {v0, v11, v10}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/16 v11, 0xa

    const-string v12, "DEPTH_STENCIL"

    invoke-direct {v0, v12, v11}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->DEPTH_STENCIL:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/16 v12, 0xb

    const-string v13, "STENCIL_INDEX"

    invoke-direct {v0, v13, v12}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->STENCIL_INDEX:Lcom/google/android/filament/Texture$Format;

    new-instance v0, Lcom/google/android/filament/Texture$Format;

    const/16 v13, 0xc

    const-string v14, "ALPHA"

    invoke-direct {v0, v14, v13}, Lcom/google/android/filament/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Format;->ALPHA:Lcom/google/android/filament/Texture$Format;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/android/filament/Texture$Format;

    sget-object v14, Lcom/google/android/filament/Texture$Format;->R:Lcom/google/android/filament/Texture$Format;

    aput-object v14, v0, v1

    sget-object v1, Lcom/google/android/filament/Texture$Format;->R_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RG:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RG_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGB_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGBA:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/Texture$Format;->RGBA_INTEGER:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/Texture$Format;->UNUSED:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/Texture$Format;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/filament/Texture$Format;->DEPTH_STENCIL:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/filament/Texture$Format;->STENCIL_INDEX:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/filament/Texture$Format;->ALPHA:Lcom/google/android/filament/Texture$Format;

    aput-object v1, v0, v13

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Format;
    .locals 1

    const-class v0, Lcom/google/android/filament/Texture$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Format;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Format;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$Format;->$VALUES:[Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Format;

    return-object v0
.end method
