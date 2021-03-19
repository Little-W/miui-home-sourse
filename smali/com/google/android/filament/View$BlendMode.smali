.class public final enum Lcom/google/android/filament/View$BlendMode;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$BlendMode;

.field public static final enum OPAQUE:Lcom/google/android/filament/View$BlendMode;

.field public static final enum TRANSLUCENT:Lcom/google/android/filament/View$BlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lcom/google/android/filament/View$BlendMode;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$BlendMode;->OPAQUE:Lcom/google/android/filament/View$BlendMode;

    .line 90
    new-instance v0, Lcom/google/android/filament/View$BlendMode;

    const-string v1, "TRANSLUCENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/View$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$BlendMode;->TRANSLUCENT:Lcom/google/android/filament/View$BlendMode;

    const/4 v0, 0x2

    .line 88
    new-array v0, v0, [Lcom/google/android/filament/View$BlendMode;

    sget-object v1, Lcom/google/android/filament/View$BlendMode;->OPAQUE:Lcom/google/android/filament/View$BlendMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$BlendMode;->TRANSLUCENT:Lcom/google/android/filament/View$BlendMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/View$BlendMode;->$VALUES:[Lcom/google/android/filament/View$BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$BlendMode;
    .locals 1

    .line 88
    const-class v0, Lcom/google/android/filament/View$BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$BlendMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$BlendMode;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/android/filament/View$BlendMode;->$VALUES:[Lcom/google/android/filament/View$BlendMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$BlendMode;

    return-object v0
.end method
