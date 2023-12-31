.class public final enum Lcom/google/android/filament/LightManager$Type;
.super Ljava/lang/Enum;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/LightManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/LightManager$Type;

.field public static final enum DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

.field public static final enum FOCUSED_SPOT:Lcom/google/android/filament/LightManager$Type;

.field public static final enum POINT:Lcom/google/android/filament/LightManager$Type;

.field public static final enum SPOT:Lcom/google/android/filament/LightManager$Type;

.field public static final enum SUN:Lcom/google/android/filament/LightManager$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 169
    new-instance v0, Lcom/google/android/filament/LightManager$Type;

    const/4 v1, 0x0

    const-string v2, "SUN"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/LightManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->SUN:Lcom/google/android/filament/LightManager$Type;

    .line 172
    new-instance v0, Lcom/google/android/filament/LightManager$Type;

    const/4 v2, 0x1

    const-string v3, "DIRECTIONAL"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/LightManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    .line 175
    new-instance v0, Lcom/google/android/filament/LightManager$Type;

    const/4 v3, 0x2

    const-string v4, "POINT"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/LightManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->POINT:Lcom/google/android/filament/LightManager$Type;

    .line 178
    new-instance v0, Lcom/google/android/filament/LightManager$Type;

    const/4 v4, 0x3

    const-string v5, "FOCUSED_SPOT"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/LightManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$Type;

    .line 181
    new-instance v0, Lcom/google/android/filament/LightManager$Type;

    const/4 v5, 0x4

    const-string v6, "SPOT"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/LightManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->SPOT:Lcom/google/android/filament/LightManager$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/filament/LightManager$Type;

    .line 167
    sget-object v6, Lcom/google/android/filament/LightManager$Type;->SUN:Lcom/google/android/filament/LightManager$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/LightManager$Type;->POINT:Lcom/google/android/filament/LightManager$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/LightManager$Type;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/LightManager$Type;->SPOT:Lcom/google/android/filament/LightManager$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/LightManager$Type;->$VALUES:[Lcom/google/android/filament/LightManager$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/LightManager$Type;
    .locals 1

    .line 167
    const-class v0, Lcom/google/android/filament/LightManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/LightManager$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/LightManager$Type;
    .locals 1

    .line 167
    sget-object v0, Lcom/google/android/filament/LightManager$Type;->$VALUES:[Lcom/google/android/filament/LightManager$Type;

    invoke-virtual {v0}, [Lcom/google/android/filament/LightManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/LightManager$Type;

    return-object v0
.end method
