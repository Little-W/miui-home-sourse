.class public final enum Lcom/google/android/filament/View$ToneMapping;
.super Ljava/lang/Enum;
.source "View.java"


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

    .line 733
    new-instance v0, Lcom/google/android/filament/View$ToneMapping;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$ToneMapping;->LINEAR:Lcom/google/android/filament/View$ToneMapping;

    .line 738
    new-instance v0, Lcom/google/android/filament/View$ToneMapping;

    const-string v1, "ACES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/View$ToneMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    const/4 v0, 0x2

    .line 728
    new-array v0, v0, [Lcom/google/android/filament/View$ToneMapping;

    sget-object v1, Lcom/google/android/filament/View$ToneMapping;->LINEAR:Lcom/google/android/filament/View$ToneMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    aput-object v1, v0, v3

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

    .line 729
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$ToneMapping;
    .locals 1

    .line 728
    const-class v0, Lcom/google/android/filament/View$ToneMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$ToneMapping;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$ToneMapping;
    .locals 1

    .line 728
    sget-object v0, Lcom/google/android/filament/View$ToneMapping;->$VALUES:[Lcom/google/android/filament/View$ToneMapping;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$ToneMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$ToneMapping;

    return-object v0
.end method
