.class public final enum Lcom/google/android/filament/View$QualityLevel;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$QualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$QualityLevel;

.field public static final enum HIGH:Lcom/google/android/filament/View$QualityLevel;

.field public static final enum LOW:Lcom/google/android/filament/View$QualityLevel;

.field public static final enum MEDIUM:Lcom/google/android/filament/View$QualityLevel;

.field public static final enum ULTRA:Lcom/google/android/filament/View$QualityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    new-instance v0, Lcom/google/android/filament/View$QualityLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    .line 83
    new-instance v0, Lcom/google/android/filament/View$QualityLevel;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/View$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$QualityLevel;->MEDIUM:Lcom/google/android/filament/View$QualityLevel;

    .line 84
    new-instance v0, Lcom/google/android/filament/View$QualityLevel;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/View$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$QualityLevel;->HIGH:Lcom/google/android/filament/View$QualityLevel;

    .line 85
    new-instance v0, Lcom/google/android/filament/View$QualityLevel;

    const-string v1, "ULTRA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/View$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$QualityLevel;->ULTRA:Lcom/google/android/filament/View$QualityLevel;

    const/4 v0, 0x4

    .line 81
    new-array v0, v0, [Lcom/google/android/filament/View$QualityLevel;

    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->MEDIUM:Lcom/google/android/filament/View$QualityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->HIGH:Lcom/google/android/filament/View$QualityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->ULTRA:Lcom/google/android/filament/View$QualityLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/View$QualityLevel;->$VALUES:[Lcom/google/android/filament/View$QualityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$QualityLevel;
    .locals 1

    .line 81
    const-class v0, Lcom/google/android/filament/View$QualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$QualityLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$QualityLevel;
    .locals 1

    .line 81
    sget-object v0, Lcom/google/android/filament/View$QualityLevel;->$VALUES:[Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$QualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$QualityLevel;

    return-object v0
.end method
