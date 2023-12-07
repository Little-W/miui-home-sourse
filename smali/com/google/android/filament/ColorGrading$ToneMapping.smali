.class public final enum Lcom/google/android/filament/ColorGrading$ToneMapping;
.super Ljava/lang/Enum;


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

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v2, 0x1

    const-string v3, "ACES_LEGACY"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v3, 0x2

    const-string v4, "ACES"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v4, 0x3

    const-string v5, "FILMIC"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v5, 0x4

    const-string v6, "UCHIMURA"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v6, 0x5

    const-string v7, "REINHARD"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

    new-instance v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v7, 0x6

    const-string v8, "DISPLAY_RANGE"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/ColorGrading$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/filament/ColorGrading$ToneMapping;

    sget-object v8, Lcom/google/android/filament/ColorGrading$ToneMapping;->LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/ColorGrading$ToneMapping;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

    aput-object v1, v0, v7

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/ColorGrading$ToneMapping;
    .locals 1

    const-class v0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/ColorGrading$ToneMapping;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/ColorGrading$ToneMapping;
    .locals 1

    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->$VALUES:[Lcom/google/android/filament/ColorGrading$ToneMapping;

    invoke-virtual {v0}, [Lcom/google/android/filament/ColorGrading$ToneMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/ColorGrading$ToneMapping;

    return-object v0
.end method
