.class public final enum Lcom/google/android/filament/Material$RefractionMode;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefractionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$RefractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$RefractionMode;

.field public static final enum CUBEMAP:Lcom/google/android/filament/Material$RefractionMode;

.field public static final enum NONE:Lcom/google/android/filament/Material$RefractionMode;

.field public static final enum SCREEN_SPACE:Lcom/google/android/filament/Material$RefractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 152
    new-instance v0, Lcom/google/android/filament/Material$RefractionMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$RefractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$RefractionMode;->NONE:Lcom/google/android/filament/Material$RefractionMode;

    .line 153
    new-instance v0, Lcom/google/android/filament/Material$RefractionMode;

    const/4 v2, 0x1

    const-string v3, "CUBEMAP"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$RefractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$RefractionMode;->CUBEMAP:Lcom/google/android/filament/Material$RefractionMode;

    .line 154
    new-instance v0, Lcom/google/android/filament/Material$RefractionMode;

    const/4 v3, 0x2

    const-string v4, "SCREEN_SPACE"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Material$RefractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$RefractionMode;->SCREEN_SPACE:Lcom/google/android/filament/Material$RefractionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/filament/Material$RefractionMode;

    .line 151
    sget-object v4, Lcom/google/android/filament/Material$RefractionMode;->NONE:Lcom/google/android/filament/Material$RefractionMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$RefractionMode;->CUBEMAP:Lcom/google/android/filament/Material$RefractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$RefractionMode;->SCREEN_SPACE:Lcom/google/android/filament/Material$RefractionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/Material$RefractionMode;->$VALUES:[Lcom/google/android/filament/Material$RefractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$RefractionMode;
    .locals 1

    .line 151
    const-class v0, Lcom/google/android/filament/Material$RefractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$RefractionMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$RefractionMode;
    .locals 1

    .line 151
    sget-object v0, Lcom/google/android/filament/Material$RefractionMode;->$VALUES:[Lcom/google/android/filament/Material$RefractionMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$RefractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$RefractionMode;

    return-object v0
.end method
