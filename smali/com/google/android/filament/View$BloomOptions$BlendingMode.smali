.class public final enum Lcom/google/android/filament/View$BloomOptions$BlendingMode;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View$BloomOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$BloomOptions$BlendingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$BloomOptions$BlendingMode;

.field public static final enum ADD:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

.field public static final enum INTERPOLATE:Lcom/google/android/filament/View$BloomOptions$BlendingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 217
    new-instance v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    const/4 v1, 0x0

    const-string v2, "ADD"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/View$BloomOptions$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->ADD:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    .line 218
    new-instance v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    const/4 v2, 0x1

    const-string v3, "INTERPOLATE"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/View$BloomOptions$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->INTERPOLATE:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    .line 216
    sget-object v3, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->ADD:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->INTERPOLATE:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->$VALUES:[Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$BloomOptions$BlendingMode;
    .locals 1

    .line 216
    const-class v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$BloomOptions$BlendingMode;
    .locals 1

    .line 216
    sget-object v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->$VALUES:[Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$BloomOptions$BlendingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    return-object v0
.end method
