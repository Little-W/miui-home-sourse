.class public final enum Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View$DepthOfFieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

.field public static final enum MEDIAN:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

.field public static final enum NONE:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 560
    new-instance v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->NONE:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    .line 561
    new-instance v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    const-string v1, "MEDIAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->MEDIAN:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    const/4 v0, 0x2

    .line 559
    new-array v0, v0, [Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    sget-object v1, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->NONE:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->MEDIAN:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->$VALUES:[Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;
    .locals 1

    .line 559
    const-class v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;
    .locals 1

    .line 559
    sget-object v0, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->$VALUES:[Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    return-object v0
.end method
