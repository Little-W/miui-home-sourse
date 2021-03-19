.class public final enum Lcom/google/android/filament/Colors$RgbaType;
.super Ljava/lang/Enum;
.source "Colors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Colors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RgbaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Colors$RgbaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Colors$RgbaType;

.field public static final enum LINEAR:Lcom/google/android/filament/Colors$RgbaType;

.field public static final enum PREMULTIPLIED_LINEAR:Lcom/google/android/filament/Colors$RgbaType;

.field public static final enum PREMULTIPLIED_SRGB:Lcom/google/android/filament/Colors$RgbaType;

.field public static final enum SRGB:Lcom/google/android/filament/Colors$RgbaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/google/android/filament/Colors$RgbaType;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Colors$RgbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbaType;->SRGB:Lcom/google/android/filament/Colors$RgbaType;

    .line 68
    new-instance v0, Lcom/google/android/filament/Colors$RgbaType;

    const-string v1, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Colors$RgbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbaType;->LINEAR:Lcom/google/android/filament/Colors$RgbaType;

    .line 74
    new-instance v0, Lcom/google/android/filament/Colors$RgbaType;

    const-string v1, "PREMULTIPLIED_SRGB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Colors$RgbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbaType;->PREMULTIPLIED_SRGB:Lcom/google/android/filament/Colors$RgbaType;

    .line 80
    new-instance v0, Lcom/google/android/filament/Colors$RgbaType;

    const-string v1, "PREMULTIPLIED_LINEAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Colors$RgbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbaType;->PREMULTIPLIED_LINEAR:Lcom/google/android/filament/Colors$RgbaType;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/google/android/filament/Colors$RgbaType;

    sget-object v1, Lcom/google/android/filament/Colors$RgbaType;->SRGB:Lcom/google/android/filament/Colors$RgbaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Colors$RgbaType;->LINEAR:Lcom/google/android/filament/Colors$RgbaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Colors$RgbaType;->PREMULTIPLIED_SRGB:Lcom/google/android/filament/Colors$RgbaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Colors$RgbaType;->PREMULTIPLIED_LINEAR:Lcom/google/android/filament/Colors$RgbaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/Colors$RgbaType;->$VALUES:[Lcom/google/android/filament/Colors$RgbaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Colors$RgbaType;
    .locals 1

    .line 57
    const-class v0, Lcom/google/android/filament/Colors$RgbaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Colors$RgbaType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Colors$RgbaType;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/android/filament/Colors$RgbaType;->$VALUES:[Lcom/google/android/filament/Colors$RgbaType;

    invoke-virtual {v0}, [Lcom/google/android/filament/Colors$RgbaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Colors$RgbaType;

    return-object v0
.end method
