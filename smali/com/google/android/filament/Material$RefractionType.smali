.class public final enum Lcom/google/android/filament/Material$RefractionType;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefractionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$RefractionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$RefractionType;

.field public static final enum SOLID:Lcom/google/android/filament/Material$RefractionType;

.field public static final enum THIN:Lcom/google/android/filament/Material$RefractionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 165
    new-instance v0, Lcom/google/android/filament/Material$RefractionType;

    const/4 v1, 0x0

    const-string v2, "SOLID"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$RefractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$RefractionType;->SOLID:Lcom/google/android/filament/Material$RefractionType;

    .line 166
    new-instance v0, Lcom/google/android/filament/Material$RefractionType;

    const/4 v2, 0x1

    const-string v3, "THIN"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$RefractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$RefractionType;->THIN:Lcom/google/android/filament/Material$RefractionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/Material$RefractionType;

    .line 164
    sget-object v3, Lcom/google/android/filament/Material$RefractionType;->SOLID:Lcom/google/android/filament/Material$RefractionType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$RefractionType;->THIN:Lcom/google/android/filament/Material$RefractionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/Material$RefractionType;->$VALUES:[Lcom/google/android/filament/Material$RefractionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$RefractionType;
    .locals 1

    .line 164
    const-class v0, Lcom/google/android/filament/Material$RefractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$RefractionType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$RefractionType;
    .locals 1

    .line 164
    sget-object v0, Lcom/google/android/filament/Material$RefractionType;->$VALUES:[Lcom/google/android/filament/Material$RefractionType;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$RefractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$RefractionType;

    return-object v0
.end method
