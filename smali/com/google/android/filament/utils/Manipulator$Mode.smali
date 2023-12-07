.class public final enum Lcom/google/android/filament/utils/Manipulator$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/Manipulator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/Manipulator$Mode;

.field public static final enum FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$Mode;

.field public static final enum MAP:Lcom/google/android/filament/utils/Manipulator$Mode;

.field public static final enum ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Mode;

    const/4 v1, 0x0

    const-string v2, "ORBIT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/utils/Manipulator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Mode;

    const/4 v2, 0x1

    const-string v3, "MAP"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/utils/Manipulator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Mode;->MAP:Lcom/google/android/filament/utils/Manipulator$Mode;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Mode;

    const/4 v3, 0x2

    const-string v4, "FREE_FLIGHT"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/utils/Manipulator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Mode;->FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/filament/utils/Manipulator$Mode;

    sget-object v4, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Mode;->MAP:Lcom/google/android/filament/utils/Manipulator$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Mode;->FREE_FLIGHT:Lcom/google/android/filament/utils/Manipulator$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Mode;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/Manipulator$Mode;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/Manipulator$Mode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/Manipulator$Mode;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$Mode;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/Manipulator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/Manipulator$Mode;

    return-object v0
.end method
