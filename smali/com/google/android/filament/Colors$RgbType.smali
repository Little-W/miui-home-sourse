.class public final enum Lcom/google/android/filament/Colors$RgbType;
.super Ljava/lang/Enum;
.source "Colors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Colors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RgbType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Colors$RgbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Colors$RgbType;

.field public static final enum LINEAR:Lcom/google/android/filament/Colors$RgbType;

.field public static final enum SRGB:Lcom/google/android/filament/Colors$RgbType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/google/android/filament/Colors$RgbType;

    const/4 v1, 0x0

    const-string v2, "SRGB"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Colors$RgbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbType;->SRGB:Lcom/google/android/filament/Colors$RgbType;

    .line 51
    new-instance v0, Lcom/google/android/filament/Colors$RgbType;

    const/4 v2, 0x1

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Colors$RgbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Colors$RgbType;->LINEAR:Lcom/google/android/filament/Colors$RgbType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/Colors$RgbType;

    .line 46
    sget-object v3, Lcom/google/android/filament/Colors$RgbType;->SRGB:Lcom/google/android/filament/Colors$RgbType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/Colors$RgbType;->LINEAR:Lcom/google/android/filament/Colors$RgbType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/Colors$RgbType;->$VALUES:[Lcom/google/android/filament/Colors$RgbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Colors$RgbType;
    .locals 1

    .line 46
    const-class v0, Lcom/google/android/filament/Colors$RgbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Colors$RgbType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Colors$RgbType;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/filament/Colors$RgbType;->$VALUES:[Lcom/google/android/filament/Colors$RgbType;

    invoke-virtual {v0}, [Lcom/google/android/filament/Colors$RgbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Colors$RgbType;

    return-object v0
.end method
