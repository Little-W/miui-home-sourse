.class public final enum Lcom/google/android/filament/View$ToneMapping;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToneMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$ToneMapping;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$ToneMapping;

.field public static final enum ACES:Lcom/google/android/filament/View$ToneMapping;

.field public static final enum LINEAR:Lcom/google/android/filament/View$ToneMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/filament/View$ToneMapping;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/View$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$ToneMapping;->LINEAR:Lcom/google/android/filament/View$ToneMapping;

    new-instance v0, Lcom/google/android/filament/View$ToneMapping;

    const/4 v2, 0x1

    const-string v3, "ACES"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/View$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/View$ToneMapping;

    sget-object v3, Lcom/google/android/filament/View$ToneMapping;->LINEAR:Lcom/google/android/filament/View$ToneMapping;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/View$ToneMapping;->$VALUES:[Lcom/google/android/filament/View$ToneMapping;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$ToneMapping;
    .locals 1

    const-class v0, Lcom/google/android/filament/View$ToneMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$ToneMapping;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$ToneMapping;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$ToneMapping;->$VALUES:[Lcom/google/android/filament/View$ToneMapping;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$ToneMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$ToneMapping;

    return-object v0
.end method
