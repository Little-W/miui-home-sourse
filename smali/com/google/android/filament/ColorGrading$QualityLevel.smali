.class public final enum Lcom/google/android/filament/ColorGrading$QualityLevel;
.super Ljava/lang/Enum;
.source "ColorGrading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ColorGrading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/ColorGrading$QualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/ColorGrading$QualityLevel;

.field public static final enum HIGH:Lcom/google/android/filament/ColorGrading$QualityLevel;

.field public static final enum LOW:Lcom/google/android/filament/ColorGrading$QualityLevel;

.field public static final enum MEDIUM:Lcom/google/android/filament/ColorGrading$QualityLevel;

.field public static final enum ULTRA:Lcom/google/android/filament/ColorGrading$QualityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 102
    new-instance v0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->LOW:Lcom/google/android/filament/ColorGrading$QualityLevel;

    .line 103
    new-instance v0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/ColorGrading$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->MEDIUM:Lcom/google/android/filament/ColorGrading$QualityLevel;

    .line 104
    new-instance v0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/ColorGrading$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->HIGH:Lcom/google/android/filament/ColorGrading$QualityLevel;

    .line 105
    new-instance v0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    const-string v1, "ULTRA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/ColorGrading$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->ULTRA:Lcom/google/android/filament/ColorGrading$QualityLevel;

    const/4 v0, 0x4

    .line 101
    new-array v0, v0, [Lcom/google/android/filament/ColorGrading$QualityLevel;

    sget-object v1, Lcom/google/android/filament/ColorGrading$QualityLevel;->LOW:Lcom/google/android/filament/ColorGrading$QualityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/ColorGrading$QualityLevel;->MEDIUM:Lcom/google/android/filament/ColorGrading$QualityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/ColorGrading$QualityLevel;->HIGH:Lcom/google/android/filament/ColorGrading$QualityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/ColorGrading$QualityLevel;->ULTRA:Lcom/google/android/filament/ColorGrading$QualityLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->$VALUES:[Lcom/google/android/filament/ColorGrading$QualityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/ColorGrading$QualityLevel;
    .locals 1

    .line 101
    const-class v0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/ColorGrading$QualityLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/ColorGrading$QualityLevel;
    .locals 1

    .line 101
    sget-object v0, Lcom/google/android/filament/ColorGrading$QualityLevel;->$VALUES:[Lcom/google/android/filament/ColorGrading$QualityLevel;

    invoke-virtual {v0}, [Lcom/google/android/filament/ColorGrading$QualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/ColorGrading$QualityLevel;

    return-object v0
.end method
