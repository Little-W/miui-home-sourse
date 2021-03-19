.class public final enum Lcom/google/android/filament/ColorGrading$ToneMapping;
.super Ljava/lang/Enum;
.source "ColorGrading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ColorGrading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToneMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/ColorGrading$ToneMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

.field public static final enum UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 105
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 107
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "ACES_LEGACY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 109
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "ACES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 111
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "FILMIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 113
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "UCHIMURA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 115
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "REINHARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 117
    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const-string v1, "DISPLAY_RANGE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v0, 0x7

    .line 103
    new-array v0, v0, [Lcom/google/android/filament/ColorGrading$ToneMapping;

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->$VALUES:[Lcom/google/android/filament/ColorGrading$ToneMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/ColorGrading$ToneMapping;
    .locals 1

    .line 103
    const-class v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/ColorGrading$ToneMapping;
    .locals 1

    .line 103
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->$VALUES:[Lcom/google/android/filament/ColorGrading$ToneMapping;

    invoke-virtual {v0}, [Lcom/google/android/filament/ColorGrading$ToneMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/ColorGrading$ToneMapping;

    return-object v0
.end method
