.class public final enum Lcom/google/android/filament/View$AmbientOcclusion;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmbientOcclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$AmbientOcclusion;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$AmbientOcclusion;

.field public static final enum NONE:Lcom/google/android/filament/View$AmbientOcclusion;

.field public static final enum SSAO:Lcom/google/android/filament/View$AmbientOcclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 701
    new-instance v0, Lcom/google/android/filament/View$AmbientOcclusion;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$AmbientOcclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$AmbientOcclusion;->NONE:Lcom/google/android/filament/View$AmbientOcclusion;

    .line 702
    new-instance v0, Lcom/google/android/filament/View$AmbientOcclusion;

    const-string v1, "SSAO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/View$AmbientOcclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$AmbientOcclusion;->SSAO:Lcom/google/android/filament/View$AmbientOcclusion;

    const/4 v0, 0x2

    .line 699
    new-array v0, v0, [Lcom/google/android/filament/View$AmbientOcclusion;

    sget-object v1, Lcom/google/android/filament/View$AmbientOcclusion;->NONE:Lcom/google/android/filament/View$AmbientOcclusion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$AmbientOcclusion;->SSAO:Lcom/google/android/filament/View$AmbientOcclusion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/View$AmbientOcclusion;->$VALUES:[Lcom/google/android/filament/View$AmbientOcclusion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 700
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$AmbientOcclusion;
    .locals 1

    .line 699
    const-class v0, Lcom/google/android/filament/View$AmbientOcclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$AmbientOcclusion;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$AmbientOcclusion;
    .locals 1

    .line 699
    sget-object v0, Lcom/google/android/filament/View$AmbientOcclusion;->$VALUES:[Lcom/google/android/filament/View$AmbientOcclusion;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$AmbientOcclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$AmbientOcclusion;

    return-object v0
.end method
