.class public final enum Lcom/google/android/filament/View$AntiAliasing;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AntiAliasing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$AntiAliasing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$AntiAliasing;

.field public static final enum FXAA:Lcom/google/android/filament/View$AntiAliasing;

.field public static final enum NONE:Lcom/google/android/filament/View$AntiAliasing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 425
    new-instance v0, Lcom/google/android/filament/View$AntiAliasing;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/View$AntiAliasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$AntiAliasing;->NONE:Lcom/google/android/filament/View$AntiAliasing;

    .line 430
    new-instance v0, Lcom/google/android/filament/View$AntiAliasing;

    const/4 v2, 0x1

    const-string v3, "FXAA"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/View$AntiAliasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$AntiAliasing;->FXAA:Lcom/google/android/filament/View$AntiAliasing;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/View$AntiAliasing;

    .line 421
    sget-object v3, Lcom/google/android/filament/View$AntiAliasing;->NONE:Lcom/google/android/filament/View$AntiAliasing;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/View$AntiAliasing;->FXAA:Lcom/google/android/filament/View$AntiAliasing;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/View$AntiAliasing;->$VALUES:[Lcom/google/android/filament/View$AntiAliasing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$AntiAliasing;
    .locals 1

    .line 421
    const-class v0, Lcom/google/android/filament/View$AntiAliasing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$AntiAliasing;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$AntiAliasing;
    .locals 1

    .line 421
    sget-object v0, Lcom/google/android/filament/View$AntiAliasing;->$VALUES:[Lcom/google/android/filament/View$AntiAliasing;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$AntiAliasing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$AntiAliasing;

    return-object v0
.end method
